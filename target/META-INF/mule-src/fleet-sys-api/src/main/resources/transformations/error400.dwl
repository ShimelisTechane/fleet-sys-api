%dw 2.0
output application/json
---
{
  "status" : "ERROR",
  "code" : error.errorType.identifier default "500",
  "message" :  error.description,
  "description" : error.detailedDescription,
  "correlationId" : correlationId default "",
  "timestamp": now() as DateTime
}