package tigerloaf.item

import org.codehaus.groovy.grails.commons.ConfigurationHolder


class LaptopController {

    def exportService


    
    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index = {
        redirect(action: "list", params: params)
    }

    def list = {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        
        if(params?.format && params.format != "html"){
            response.contentType = ConfigurationHolder.config.grails.mime.types[params.format]
            response.setHeader("Content-disposition", "attachment; filename=laptops.${params.extension}")

            exportService.export(params.format, response.outputStream,Laptop.list(params), [:], [:])
        }
        
        [laptopInstanceList: Laptop.list(params), laptopInstanceTotal: Laptop.count()]
    }

    def create = {
        def laptopInstance = new Laptop()
        laptopInstance.properties = params
        return [laptopInstance: laptopInstance]
    }

    def save = {
        def laptopInstance = new Laptop(params)
        if (laptopInstance.save(flush: true)) {
            flash.message = "${message(code: 'default.created.message', args: [message(code: 'laptop.label', default: 'Laptop'), laptopInstance.name])}"
            redirect(action: "show", id: laptopInstance.id)
        }
        else {
            render(view: "create", model: [laptopInstance: laptopInstance])
        }
    }

    def show = {
        def laptopInstance = Laptop.get(params.id)
        if (!laptopInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'laptop.label', default: 'Laptop'), params.id])}"
            redirect(action: "list")
        }
        else {
            [laptopInstance: laptopInstance]
        }
    }

    def edit = {
        def laptopInstance = Laptop.get(params.id)
        if (!laptopInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'laptop.label', default: 'Laptop'), params.id])}"
            redirect(action: "list")
        }
        else {
            return [laptopInstance: laptopInstance]
        }
    }

    def update = {
        def laptopInstance = Laptop.get(params.id)
        if (laptopInstance) {
            if (params.version) {
                def version = params.version.toLong()
                if (laptopInstance.version > version) {
                    
                    laptopInstance.errors.rejectValue("version", "default.optimistic.locking.failure", [message(code: 'laptop.label', default: 'Laptop')] as Object[], "Another user has updated this Laptop while you were editing")
                    render(view: "edit", model: [laptopInstance: laptopInstance])
                    return
                }
            }
            laptopInstance.properties = params
            if (!laptopInstance.hasErrors() && laptopInstance.save(flush: true)) {
                flash.message = "${message(code: 'default.updated.message', args: [message(code: 'laptop.label', default: 'Laptop'), laptopInstance.id])}"
                redirect(action: "show", id: laptopInstance.id)
            }
            else {
                render(view: "edit", model: [laptopInstance: laptopInstance])
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'laptop.label', default: 'Laptop'), params.id])}"
            redirect(action: "list")
        }
    }

    def delete = {
        def laptopInstance = Laptop.get(params.id)
        if (laptopInstance) {
            try {
                laptopInstance.delete(flush: true)
                flash.message = "${message(code: 'default.deleted.message', args: [message(code: 'laptop.label', default: 'Laptop'), params.id])}"
                redirect(action: "list")
            }
            catch (org.springframework.dao.DataIntegrityViolationException e) {
                flash.message = "${message(code: 'default.not.deleted.message', args: [message(code: 'laptop.label', default: 'Laptop'), params.id])}"
                redirect(action: "show", id: params.id)
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'laptop.label', default: 'Laptop'), params.id])}"
            redirect(action: "list")
        }
    }
}
