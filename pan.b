	switch (t->back) {
	default: Uerror("bad return move");
	case  0: goto R999; /* nothing to undo */

		 /* CLAIM property4 */
;
		;
		
	case 4: /* STATE 6 */
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM property3 */
;
		;
		;
		;
		
	case 7: /* STATE 13 */
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM property2 */
;
		;
		;
		
	case 9: /* STATE 3 */
		goto R999;
;
		;
		;
		
	case 11: /* STATE 13 */
		goto R999;

	case 12: /* STATE 20 */
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM property1 */
;
		
	case 13: /* STATE 1 */
		goto R999;

	case 14: /* STATE 10 */
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC n */

	case 15: /* STATE 1 */
		;
		now.mode = trpt->bup.oval;
		;
		goto R999;

	case 16: /* STATE 5 */
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC m */

	case 17: /* STATE 1 */
		;
		now.mode = trpt->bup.oval;
		;
		goto R999;

	case 18: /* STATE 2 */
		;
		now.mode = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 20: /* STATE 6 */
		;
		now.count = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 22: /* STATE 8 */
		;
		now.count = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 24: /* STATE 17 */
		;
		now.count = trpt->bup.oval;
		;
		goto R999;

	case 25: /* STATE 18 */
		;
		p_restor(II);
		;
		;
		goto R999;
	}

