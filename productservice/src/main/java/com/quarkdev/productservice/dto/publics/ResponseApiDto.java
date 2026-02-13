package com.quarkdev.productservice.dto.publics;

import lombok.*;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@ToString
@Builder
public class ResponseApiDto<T> {

    private String code;
    private String message;
    private T body;

}
