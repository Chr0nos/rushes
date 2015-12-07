" **************************************************************************** "
"                                                                              "
"                                                         :::      ::::::::    "
"    header42.vim                                       :+:      :+:    :+:    "
"                                                     +:+ +:+         +:+      "
"    By: snicolet <marvin@42.fr>                    +#+  +:+       +#+         "
"                                                 +#+#+#+#+#+   +#+            "
"    Created: 2015/12/06 15:51:26 by snicolet          #+#    #+#              "
"    Updated: 2015/12/06 16:35:53 by snicolet         ###   ########.fr        "
"                                                                              "
" *****************************r********************************************** "

function!	Insert_header_42()
	call append(0, "/* ************************************************************************** */")
	call append(1, "/*                                                                            */")
	call append(2, "/*                                                        :::      ::::::::   */")
	call append(3, "/*                                                      :+:      :+:    :+:   */")
	call append(4, "/*                                                    +:+ +:+         +:+     */")
	call append(6, "/*                                                +#+#+#+#+#+   +#+           */")
	call append(7, "/*   Created:                                          #+#    #+#             */")
	call append(8, "/*   Updated:                                         ###   ########.fr       */")
	call append(9, "/*                                                                            */")
	call append(10, "/* ************************************************************************* */")
endfunction

function !Insert_header_info()
	let pseudo = $USER
	let email = $MAIL
	let l:line = "/*   By: " . $USER . " <" . $MAIL . ">                    +#+  +:+       +#+        */"
endfunction
