import Foundation
import CoreData

public extension NSManagedObject {
    
    /// Αποθηκεύει τον εαυτό του στο managedObjectContext που το δημιούργησε.
    func save() {
        DispatchQueue.main.async {
            try? self.managedObjectContext?.save()
        }
    }
    
    /// Διαγράφει τον εαυτό του απο τοmanagedObjectContext που το δημιούργησε.
    func delete() {
        self.managedObjectContext?.delete(self)
        self.save()
    }
}
