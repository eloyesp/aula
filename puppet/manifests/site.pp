# Site Manifest

# For more details, see Puppet Best Practices 2.0 :
# http://reductivelabs.com/trac/puppet/wiki/PuppetBestPractice

import "defaults"
import "classes/*.pp"
import "templates"
import "nodes"

########################
import 'usuarios'
import 'yumrepo'

# Configuración del aula

$nameservers = ['192.168.1.4', 'pc19', '168.96.132.2']


class grupos {
	group { 'user':
        gid => '600'
	}
	group { 'pasantes':
        gid => '700'
	}
}

class usuarios_del_aula {

	user { 'root':
	    uid => '0',
	    password => '$6$qQQUhJZN7CGICV0t$1dPcgOPiFz9HiNbi9jqNKq717lQBlWXDi9HwOujkrstzfypA1HVYj/j.aRZPLNvQwyOMpUO2iL51d6h7TvOR21',
	    comment => 'root',
	    groups => ['root','bin','daemon','sys','adm','disk','wheel'],
 	}

	normal_user { 'inform_cm':
	    password => '$6$Qvo4PEbA5ZHCdrAE$bbdLAVNROiSty1oqFkfj5QlXLd0OJUQo99A1KwU/gxr4oyreILCMh29oIT175FA3x/rcgjIFo3TqGqLZzobUq.',
	    comment => 'Informática de Ciencias Médicas',
	    uid => '601'
	}
	normal_user { 'metinv_cm':
	    uid => '602',
	    password => '$6$Qvo4PEbA5ZHCdrAE$BFYUiN63hELgWyNzuiVjK5Cr/widQU54AQwcYF7OMNyrOb8dF6kPyXv5dnFfupz8biXtYWZW51C4eezpJecZZ.',
	    comment => 'Metodología de la Investigación_cm'
	}
	normal_user { 'inform_fbcb':
	    uid => '603',
	    password => '$6$Qvo4PEbA5ZHCdrAE$bbdLAVNROiSty1oqFkfj5QlXLd0OJUQo99A1KwU/gxr4oyreILCMh29oIT175FA3x/rcgjIFo3TqGqLZzobUq.',
	    comment => 'inform_fbcb'
	}
	normal_user { 'sanhig_fbcb':
	    uid => '604',
	    password => '$6$Qvo4PEbA5ZHCdrAE$79nEr4V0Gjtx2DUUtxzffQpjuIob6pbhKcQTPeBAud6gAIOYyN95dvkRksWrXL5etPYfdq6isIwvjCGcFp8RV1'
	}
	normal_user { 'estadi_fbcb':
	    uid => '605',
	    password => '$6$Qvo4PEbA5ZHCdrAE$eLi68dUsD/2LOFpVBeLPJQIiw/dZORHaIIDXZteT./p5nPVeXEdh984e.Ou21ZeZPhg/NkiUQkfwkNLaA8ZLv1',
	    comment => 'Estadística fbcb'
	}
	normal_user { 'infbas_fbcb':
	    uid => '606',
	    password => '$6$Qvo4PEbA5ZHCdrAE$CHyg3Ww2DaAa3jW1kHti0Wc8AljfWkOCULCIimjFLn8lgPHqbvQZy0rHbtoz0GjURuWpmt2dc9PqkLqUa6mT.0',
	    comment => 'infbas_fbcb'
	}
	normal_user { 'infess_fbcb':
	    uid => '607',
	    password => '$6$Qvo4PEbA5ZHCdrAE$FxSH4BL/e/6d6PrNHL8iYGlncGuR9LTGI0WGN8Vz6v213R9XaGc0AqZ0sAfJgRvRnClE78jL6Vv2DzUP8hSLW/',
	    comment => 'infess_fbcb'
	}
	normal_user { 'termest_fbcb':
	    uid => '608',
	    password => '$6$Qvo4PEbA5ZHCdrAE$aE91dSCKmlTJDxkKNK9b3U5JVrb12pqmtFdFqn/CAn4HXWCxIkRw8W9r5VYktjfWgomw8gAZi4mHhZRLdCOEW/',
	    comment => 'termest_fbcb'
	}
	normal_user { 'esiess_fbcb':
	    uid => '609',
	    password => '$6$Qvo4PEbA5ZHCdrAE$ExjCxauqCKSK93lhVIdZKsA4zN/g0Ls7Pz/2Yx6RZdk.9nUJuNVM/kyE7YyXJ21uc2sZ.elZv9jhxca4QpaZw.',
	    comment => 'esiess_fbcb'
	}
	normal_user { 'modmol_fbcb':
	    uid => '610',
	    password => '$6$Qvo4PEbA5ZHCdrAE$4GdIvCXG2qYdA.mrRUIo/GMNNrQKGfiV0Kb9CWUtllN4WXfMtQ1LtyqbF/amU99Bht3zYWqeZ3mEKt.QwvwhH0',
	    comment => 'modmol_fbcb',
	}
	normal_user { 'fismac_fbcb':
	    uid => '611',
	    password => '$6$Qvo4PEbA5ZHCdrAE$MW4ka6/GCNUFHsc2q2Dq50Dr9mRM1iIbdDT0NrwUK45l6kgoKD4BNKHSnXArCPoLI.DZ8rjaFVqsahEPJ0sso/',
	    comment => 'fismac_fbcb'
	}
	normal_user { 'dibtop_fbcb':
	    uid => '612',
	    password => '$6$Qvo4PEbA5ZHCdrAE$1OMA8sQywVnR0.irAYyrcwQaS8cHin700Wzc1es0cZmoPviHu27AXI84h/K9ZfYk9yz1SceWgsc6eNkHc4jor.',
	    comment => 'dibtop_fbcb',
	}
	normal_user { 'pathuma_fbcb':
	    uid => '512',
	    password => '$6$Qvo4PEbA5ZHCdrAE$pTev/Jyx4n69CRpRRu/pFkE4DCyHyZ.xk3gfvktA8XVIsAGP06uTkpy1YA7YmnoP.9TzGWkpZikyYaIKGJXzK1',
	    comment => 'pathuma_fbcb',
	}
	normal_user { 'bioinf_fbcb':
	    uid => '513',
	    password => '$6$Qvo4PEbA5ZHCdrAE$iw5CH9/8II/qtqPB/PCDhJUHIKvJO.Nck3faMMjxUi8pHC0xzqZ4ft/60zrRRegkyl4Qh2TLrslko05wZWZuy/',
	    comment => 'bioinf_fbcb',
	}
	normal_user { 'biofmac_fbcb':
	    uid => '514',
	    password => '$6$Qvo4PEbA5ZHCdrAE$Zm9.tnm23z7P9VEdF4teBbiPI5hy0X8waPtI/anvD33z5JxLTxDuIYutwmlrH2Am0.1HA4o623V./vjSAlqnz0',
	    comment => 'biofmac_fbcb',
	}
	normal_user { 'opproc_fbcb':
	    uid => '515',
	    password => '$6$Qvo4PEbA5ZHCdrAE$elrxndu/ajaN6aRz0lNnYfsx7q9qW/dB3DWzjfC/zJq5A0CpgCnuHuPBI7bRe301ca39Izsm6iaJS5OGFTqP/0',
	    comment => 'opproc_fbcb',
	}
	normal_user { 'inteco_fich':
	    uid => '516',
	    password => '$6$Qvo4PEbA5ZHCdrAE$dgETMiCjj1rc20gYYJDQRYiRaT877Po5Y2UWoabHkKnkkA1S6j6sEwEhYApSjsG9SqtDqxK3.iMzD9QC3zjwQ0',
	    comment => 'inteco_fich',
	}
	normal_user { 'infmtc_fich':
	    uid => '517',
	    password => '$6$Qvo4PEbA5ZHCdrAE$YTaPj8iZou/i2wSEzYfFULQEhQtJhDSZ6lvxeKEFpxN95nt8edAecHsrVb2pHZF7Dgn6jeB5Tma7aDrOBrHUX1',
	    comment => 'infmtc_fich',
	}
	normal_user { 'cograf_fich':
	    uid => '518',
	    password => '$6$Qvo4PEbA5ZHCdrAE$ShujWzSLw6PwCw8ZcCMq/stbLJrA1FqIo7I4SEN5HWRKGuZphzD9ieiK2MtGB0/FOu6Kr/Wvy63dU0wX/7zLW0',
	    comment => 'cograf_fich',
	}
	normal_user { 'tecprog_fich':
	    uid => '519',
	    password => '$6$Qvo4PEbA5ZHCdrAE$gpx4.ln8gDEItOkMA9HnU.t9xIb2UYmNdwc.myHqct6OSw5KfC3u0/GCX.sGFeu2Gl57ExNinRvRDKtoPSeP20',
	    comment => 'tecprog_fich',
	}
	normal_user { 'cpdat_fich':
	    uid => '520',
	    password => '$6$Qvo4PEbA5ZHCdrAE$w8wWZjE8mli6nHvmpeyOmu6V4k2doWHeONPFzfwfoNotHZgVTbuJ0mCQN5RYUzq0owz3p78PqxMy1WiQu5eaI0',
	    comment => 'cpdat_fich',
	}
	normal_user { 'phpceich_fbcb':
	    uid => '521',
	    password => '$6$Qvo4PEbA5ZHCdrAE$JbZ/UVCu6D5vPyVLgqbEy4Ms/cj66RW6ZVamTofgV.yru/6bHKqnsvYrZBl87gwUqlErvE4OUUd3VFKu4.sru.',
	    comment => 'phpceich_fbcb',
	}
	normal_user { 'estapl_fich':
	    uid => '522',
   	    comment => 'Estadística aplicada',
	    password => '$6$a.UiRzn0$USXcIIfG5T4ULptKyI7GrucYKA/q8lPXFEhbhM/bXuHQfUvhc8jGzg0xlel/R998UtBy1Ad7uEvxRLhWJLDAQ/',
	}
	normal_user { 'morfnorm_fbcb':
	    uid => '523',
	    password => '$6$DowOE4LH$hcLKGITZmn6xXmkgtHg85d1//eR7yycxnCYATphRk5p49KsSgcUL7RXBWrsViMzlifnIo.uRqPuiPtLh5YD2P.',
	}
	normal_user { 'eelecto_fbcb':
	    uid => '524',
	    password => '$6$9toO1tRb$l3oyT22UF0CJsEVzzYzWsA12RIC3cwj1XBpdZzNX46hGwa.HLILoSaEXr5YuSnUbQ3wlt19.YKYdtwK/D7xHn1',
	}
	normal_user { 'tecinm_fbcb':
	    uid => '525',
	    password => '$6$pUKBzoml$QCz9OkbMIgqZOZ3k3kQ7dI6joVj/EoCfF50X4yVNtxoJaVy/lvWtnenx7bMgstz3h3AOUiyH4hJBhSU5zG5NA0',
	}
	normal_user { 'eloyesp':
        password => '$6$iIbQFt7M$oq0ba4xkapZHTRjGwkxh.ks04iucOUc1lIFl52n0dUaY5OG61gEmpL.OAZCqBY4JALk8XvKBsibkB/yuRKIzS/',
	    uid => '703',
	    groups => ['wheel', 'pasantes']
	}
	normal_user { 'tamara':
	    uid => '701',
        password => '$6$cibPmEL/$WN9EYYN4a440IRVw8fvYzVQpfYBOWQT3bX7wZNJqmQ5yjh20nEmZsxd4cBaeHfHl7r5ZQ9CniMJQlAa5C2LwV1',
	    groups => ['wheel', 'pasantes']
	}
	normal_user { 'martin':
        password => '$6$Bqpymicu$BbJDrjl4LJtvLgdy9n8GsRQlZ3QavcJf9abkoetJZrR8eDdLaLJJh.s9fOS5ahNHvCO1UCahXqSOreVKZuxKa.',
	    uid => '702',
	    groups => ['wheel', 'pasantes'],
	}

}

node 'pc19.multiconv.intranet.unl' {
  include grupos
  include usuarios_del_aula
  $remotes = '1'
  include repos
}

node 'ai-bhm16.unl.edu.ar' {
  include grupos
}

node default {
  include grupos,
  include usuarios_del_aula,
} 
