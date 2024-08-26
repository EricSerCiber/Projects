# Incidentes de Ciberseguridad

**Autor:** Eric Serrano Marín

## Relaciona una amenaza y un método de prevención a cada uno de los principios de ciberseguridad

En esta actividad trabajamos el criterio de evaluación del RA1:  
**a)** Se han definido los principios generales de la organización en materia de ciberseguridad, que deben ser conocidos y apoyados por la dirección de la misma.

### Confidencialidad
- **Amenaza:** Fuga de información confidencial debido a un ataque de phishing.
- **Método de prevención:** Implementar la encriptación de datos para que los atacantes no tengan acceso autorizado a cuentas y sistemas, junto con formaciones periódicas para que los usuarios reconozcan y eviten caer en ataques de phishing.

### Integridad
- **Amenaza:** Modificación no autorizada de datos en tránsito, como un ataque de intermediario (Man-in-the-Middle).
- **Método de prevención:** Utilizar firmas digitales y hashes para verificar la integridad de los datos, además de asegurar las comunicaciones con protocolos como TLS (Transport Layer Security) para proteger los datos en tránsito.

### Disponibilidad
- **Amenaza:** Ataque de denegación de servicios (DDoS), que sobrecarga los servidores y servicios, haciendo que no estén disponibles.
- **Método de prevención:** Implementar sistemas de mitigación de DDoS junto con soluciones de alta disponibilidad (HA) y redundancia de servidores para garantizar la disponibilidad continua de los servicios, incluso en caso de ataques.

### Autenticación
- **Amenaza:** Suplantación de identidad (spoofing) para obtener acceso no autorizado a sistemas o cuentas.
- **Método de prevención:** Utilizar autenticación multifactor (MFA), incluyendo autenticadores físicos o biométricos, junto con contraseñas y códigos temporales, para verificar la identidad del usuario y prevenir accesos no autorizados.

### No Repudio
- **Amenaza:** Un usuario que niega haber realizado una acción específica.
- **Método de prevención:** Utilizar registros de auditoría, sistemas de registro seguro (log), y firmas digitales para rastrear y almacenar evidencia inalterable de las acciones realizadas por los usuarios, asegurando que no puedan negar su participación.
