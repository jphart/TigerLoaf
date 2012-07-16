import tigerloaf.detail.Manufacturer
import tigerloaf.detail.OperatingSystem
import tigerloaf.detail.Customer
import tigerloaf.detail.Location
import tigerloaf.detail.Person
import tigerloaf.detail.Project
import org.codehaus.groovy.grails.commons.GrailsApplication
import grails.util.GrailsUtil

class BootStrap {

    def init = { servletContext ->
        
        log.info("Application starting")
        
        setupManufacturers()
        setupOperatingSystems()
        
        
        if (GrailsUtil.getEnvironment().equals(GrailsApplication.ENV_DEVELOPMENT) ||  (GrailsUtil.getEnvironment().equals(GrailsApplication.ENV_TEST)) ){
            log.info("Running in dev / test adding sample data")
            setupSampleCustomers()
            setupSampleProjects()
            setupSamplePeople()
            setupSampleLocations()
            log.info("Sample data loaded")
            
        }
        log.info("Init complete")
    }
    
    def setupSampleCustomers = {
        List customers = ["Cust A", "Cust B"]
        customers.each{
            Customer.findByName(it) ?: new Customer(name: it).save(failOnError:true)
        }
    }   
    
    def setupSamplePeople = { 
        List people = ["Bob", "Alice"]
        people.each{
            Person.findByName(it) ?: new Person(name: it).save(failOnError:true)
        }
    }
    
    def setupSampleProjects = {
        
        Customer custA = Customer.findByName("Cust A")
        
        List projects = ["BLUE SKY", "RAGING PIG"]
        projects.each{
            if(!Project.findByName(it)){
                Project proj = new Project(name: it)
                custA.addToProjects(proj)
                proj.save(failOnError: true)
            }
        }
    }
    
    def setupSampleLocations = {
        List locations = ["Ipswich", "London"]
        locations.each{
            Location.findByName(it) ?: new Location(name: it).save(failOnError:true)
        }
    }
    
    def setupManufacturers = {
        
        log.info("Setting up manufacturers")
        
        List manufacturers = ["Dell", "HP", "Apple", "Microsoft", "Supermicro", "IBM", "Lenovo", "Acer", "Asus","Ubuntu", "CentOS","RedHat"]
        manufacturers.each{
            Manufacturer.findByName(it) ?: new Manufacturer(name: it).save(failOnError:true)
        }
    }
    
    def setupOperatingSystems = {
        Map os = ["Windows Server 2008 R2": "Microsoft", "Windows Server 2008": "Microsoft", "Windows Server 2003 R2": "Microsoft",
        "Windows Server 2003": "Microsoft",
        "Windows 7": "Microsoft","Windows Vista": "Microsoft","Windows XP": "Microsoft",
        "Enterprise Linux 6":"RedHat","Enterprise Linux 5":"RedHat","Enterprise Linux 4":"RedHat",
        "CentOS 6":"CentOS","CentOS 5":"CentOS","CentOS 4":"CentOS",
        "11.10":"Ubuntu","11.04":"Ubuntu","10.10":"Ubuntu","10.04 LTS":"Ubuntu","8.04 LTS":"Ubuntu",
        "Mac OS X 10.7 Lion":"Apple", "Mac OS X 10.6 Snow Leopard":"Apple", "Mac OS X 10.5 Leopard":"Apple"]
        
        os.each{ k, v ->
            log.debug("Creating os ${k} for ${v}")
            OperatingSystem.findByOsVersion(k) ?: new OperatingSystem(manufacturer: Manufacturer.findByName(v), osVersion: k).save(failOnError:true)
        }
    }
    
    def destroy = {
        log.info("App shutting down")
    }
}
