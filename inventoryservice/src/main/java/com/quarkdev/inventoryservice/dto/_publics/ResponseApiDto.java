package com.quarkdev.inventoryservice.dto._publics;

import lombok.*;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@ToString
@Builder
public class ResponseApiDto<T> {

    private String code;

    private String message;

    private T body;

}
