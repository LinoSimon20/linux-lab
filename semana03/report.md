# Reporte de Análisis de Logs

**Archivo analizado:** sample.log  
**Fecha del análisis:** 2026-02-27 21:24:03  
**Total de entradas:** 500

---

## 1. Top 10 Direcciones IP

| Solicitudes | Dirección IP |
|------------|--------------|
| 170 | 192.168.1.10 |
| 100 | 10.0.0.5 |
| 70 | 192.168.1.25 |
| 58 | 203.0.113.42 |
| 54 | 10.0.0.99 |
| 48 | 172.16.0.3 |

## 2. Distribución por Severidad

| Nivel | Cantidad |
|-------|----------|
| FATAL | 77 |
| ERROR | 81 |
| WARNING | 87 |
| INFO | 255 |

## 3. Eventos por Hora

| Hora | Eventos |
|------|---------|
| 00:00 | 21 |
| 01:00 | 35 |
| 02:00 | 27 |
| 03:00 | 12 |
| 04:00 | 16 |
| 05:00 | 16 |
| 06:00 | 26 |
| 07:00 | 13 |
| 08:00 | 25 |
| 09:00 | 13 |
| 10:00 | 26 |
| 11:00 | 18 |
| 12:00 | 29 |
| 13:00 | 10 |
| 14:00 | 27 |
| 15:00 | 26 |
| 16:00 | 13 |
| 17:00 | 20 |
| 18:00 | 19 |
| 19:00 | 16 |
| 20:00 | 27 |
| 21:00 | 15 |
| 22:00 | 25 |
| 23:00 | 25 |

## 4. Top 5 Mensajes de Error

| Frecuencia | Mensaje |
|------------|---------|
| 58 | Connection timeout after 30s |
| 44 | Authentication failed for user admin |
| 22 | Out of memory error in module X |
| 19 | Failed to write to disk |
| 15 | Database connection refused |

## 5. Resumen

- Sistema analizado con 500 eventos registrados  
- 158 eventos requieren atención (ERROR y FATAL)  
- Análisis completado con herramientas UNIX estándar

