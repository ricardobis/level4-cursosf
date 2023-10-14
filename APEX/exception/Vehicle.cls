public class Vehicle {
    public virtual class VehicleException extends Exception {} //virtual allows extensions
    public class AgeException extends VehicleException {}

    public static void checkDriver(Integer age) {
        try {
            if (age < 18) {
                throw new AgeException('Underaged');
            }
        } catch (VehicleException e) {
            System.debug(e.getMessage());
        }
    }
}