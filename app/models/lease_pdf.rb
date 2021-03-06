class LeasePdf
  attr_reader :pdf

  def initialize
    @pdf = Prawn::Document.new
    draw
  end

  def filename
    "test.pdf"
  end

  def to_pdf
    pdf.render
  end

  def draw
    pdf.text "TANNER RENTALS LEASE AGREEMENT", size: 20, style: :bold, align: :center
    pdf.move_down(10)
    pdf.text "This Rental Agreement or Residential Lease shall evidence the complete terms and conditions under which the parties whose signatures appear below have agreed. Landlord/Lessor/Agent,"
    pdf.text "_____________________________, shall be referred to as \"OWNER\" and Tenant(s)/Lessee, _____________________________, shall be referred to as \"RESIDENT.\""
    pdf.text "As consideration for this agreement, OWNER agrees to rent/lease to RESIDENT and RESIDENT agrees to rent/lease from OWNER for use solely as a private residence, the premises located at _____________________________________________in the city of __________________________________.               1. TERMS: RESIDENT agrees to pay in advance $______ per month on the ____ day of each month. This
                agreement shall commence on _____,___ and continue; (check one)
                A.__ until _______, ___ as a leasehold. Thereafter it shall become a month-to-month tenancy. If RESIDENT should
                move from the premises prior to the expiration of this time period, he shall be liable for all rent due until such time
                that the Residence is occupied by an OWNER approved paying RESIDENT and/or expiration of said time period,
                whichever is shorter.
                B.__ until ____________, ______ on a month-to-month tenancy until either party shall terminate this agreement by
                giving a written notice of intention to terminate at least 30 days prior to the date of termination.
                2. PAYMENTS: Rent and/or other charges are to be paid at such place or method designated by the owner as follows
                _____________________________________. All payments are to be made by check or money order and cash shall
                be acceptable. OWNER acknowledges receipt of the First Month's rent of $__________, and a Security Deposit of
                $__________, and additional charges/fees for ______________________________, for a total payment of
                $__________. All payments are to be made payable to __________________________________.
                3. SECURITY DEPOSITS: The total of the above deposits shall secure compliance with the terms and conditions of
                this agreement and shall be refunded to RESIDENT within _____ days after the premises have been completely
                vacated less any amount necessary to pay OWNER; a) any unpaid rent, b) cleaning costs, c) key replacement costs, d)
                cost for repair of damages to premises and/or common areas above ordinary wear and tear, and e) any other amount
                legally allowable under the terms of this agreement. A written accounting of said charges shall be presented to
                RESIDENT within _____ days of move-out. If deposits do not cover such costs and damages, the RESIDENT shall
                immediately pay said additional costs for damages to OWNER.
                4. LATE CHARGE: A late fee of $_____, (not to exceed ___% of the monthly rent), shall be added and due for any
                payment of rent made after the ____________ of the month. Any dishonored check shall be treated as unpaid rent,
                and subject to an additional fee of $_________.
                5. UTILITIES: RESIDENT agrees to pay all utilities and/or services based upon occupancy of the premises except
                ____________________________________.
                6. OCCUPANTS: Guest(s) staying over 15 days without the written consent of OWNER shall be considered a breach
                of this agreement. ONLY the following individuals and/or animals, AND NO OTHERS shall occupy the subject
                residence for more than 15 days unless the expressed written consent of OWNER obtained in advance
                __________________________________________________.
                7. PETS: No animal, fowl, fish, reptile, and/or pet of any kind shall be kept on or about the premises, for any amount
                of time, without obtaining the prior written consent and meeting the requirements of the OWNER. Such consent if
                granted, shall be revocable at OWNER'S option upon giving a 30 day written notice. In the event laws are passed or
                permission is granted to have a pet and/or animal of any kind, an additional deposit in the amount of $_________
                shall be required along with additional monthly rent of $_______ along with the signing of OWNER'S Pet
                Agreement. RESIDENT also agrees to carry insurance deemed appropriate by OWNER to cover possible liability and
                damages that may be caused by such animals. 8. LIQUID FILLED FURNISHINGS: No liquid filled furniture, receptacle containing more than ten gallons of
                liquid is permitted without prior written consent and meeting the requirements of the OWNER. RESIDENT also
                agrees to carry insurance deemed appropriate by OWNER to cover possible losses that may be caused by such items.
                9. PARKING: When and if RESIDENT is assigned a parking area/space on OWNER'S property, the parking
                area/space shall be used exclusively for parking of passenger automobiles and/or those approved vehicles listed on
                RESIDENT'S Application attached hereto. RESIDENT is hereby assigned or permitted to park only in the following
                area or space ____________________________. The parking fee for this space (if applicable is $________ monthly.
                Said space shall not be used for the washing, painting, or repair of vehicles. No other parking space shall be used by
                RESIDENT or RESIDENT'S guest(s). RESIDENT is responsible for oil leaks and other vehicle discharges for which
                RESIDENT shall be charged for cleaning if deemed necessary by OWNER.
                10. NOISE: RESIDENT agrees not to cause or allow any noise or activity on the premises which might disturb the
                peace and quiet of another RESIDENT and/or neighbor. Said noise and/or activity shall be a breach of this agreement.
                11. DESTRUCTION OF PREMISES: If the premises become totally or partially destroyed during the term of this
                Agreement so that RESIDENT'S use is seriously impaired, OWNER or RESIDENT may terminate this Agreement
                immediately upon three day written notice to the other.
                12. CONDITION OF PREMISES: RESIDENT acknowledges that he has examined the premises and that said
                premises, all furnishings, fixtures, furniture, plumbing, heating, electrical facilities, all items listed on the attached
                property condition checklist, if any, and/or all other items provided by OWNER are all clean, and in good satisfactory
                condition except as may be indicated elsewhere in this Agreement. RESIDENT agrees to keep the premises and all
                items in good order and good condition and to immediately pay for costs to repair and/or replace any portion of the
                above damaged by RESIDENT, his guests and/or invitees, except as provided by law. At the termination of this
                Agreement, all of above items in this provision shall be returned to OWNER in clean and good condition except for
                reasonable wear and tear and the premises shall be free of all personal property and trash not belonging to OWNER. It
                is agreed that all dirt, holes, tears, burns, and stains of any size or amount in the carpets, drapes, walls, fixtures, and/or
                any other part of the premises, do not constitute reasonable wear and tear.
                13. ALTERATIONS: RESIDENT shall not paint, wallpaper, alter or redecorate, change or install locks, install
                antenna or other equipment, screws, fastening devices, large nails, or adhesive materials, place signs, displays, or
                other exhibits, on or in any portion of the premises without the written consent of the OWNER except as may be
                provided by law.
                14: PROPERTY MAINTENANCE: RESIDENT shall deposit all garbage and waste in a clean and sanitary manner
                into the proper receptacles and shall cooperate in keeping the garbage area neat and clean. RESIDENT shall be
                responsible for disposing of items of such size and nature as are not normally acceptable by the garbage hauler.
                RESIDENT shall be responsible for keeping the kitchen and bathroom drains free of things that may tend to cause
                clogging of the drains. RESIDENT shall pay for the cleaning out of any plumbing fixture that may need to be cleared
                of stoppage and for the expense or damage caused by stopping of waste pipes or overflow from bathtubs, wash basins,
                or sinks.
                15. HOUSE RULES: RESIDENT shall comply with all house rules as stated on separate addendum, but which are
                deemed part of this rental agreement, and a violation of any of the house rules is considered a breach of this
                agreement.
                16. CHANGE OF TERMS: The terms and conditions of this agreement are subject to future change by OWNER
                after the expiration of the agreed lease period upon 30-day written notice setting forth such change and delivered to
                RESIDENT. Any changes are subject to laws in existence at the time of the Notice of Change Of Terms. 17. TERMINATION: After expiration of the leasing period, this agreement is automatically renewed from month to
                month, but may be terminated by either party giving to the other a 30-day written notice of intention to terminate.
                Where laws require \"just cause\", such just cause shall be so stated on said notice. The premises shall be considered
                vacated only after all areas including storage areas are clear of all RESIDENT'S belongings, and keys and other
                property furnished for RESIDENT'S use are returned to OWNER. Should the RESIDENT hold over beyond the
                termination date or fail to vacate all possessions on or before the termination date, RESIDENT shall be liable for
                additional rent and damages which may include damages due to OWNER'S loss of prospective new renters.
                18. POSSESSION: If OWNER is unable to deliver possession of the residence to RESIDENTS on the agreed date,
                because of the loss or destruction of the residence or because of the failure of the prior residents to vacate or for any
                other reason, the RESIDENT and/or OWNER may immediately cancel and terminate this agreement upon written
                notice to the other party at their last known address, whereupon neither party shall have liability to the other, and any
                sums paid under this Agreement shall be refunded in full. If neither party cancels, this Agreement shall be prorated
                and begin on the date of actual possession.
                19. INSURANCE: RESIDENT acknowledges that OWNERS insurance does not cover personal property damage
                caused by fire, theft, rain, war, acts of God, acts of others, and/or any other causes, nor shall OWNER be held liable
                for such losses. RESIDENT is hereby advised to obtain his own insurance policy to cover any personal losses.
                20. RIGHT OF ENTRY AND INSPECTION: OWNER may enter, inspect, and/or repair the premises at any time
                in case of emergency or suspected abandonment. OWNER shall give 24 hours advance notice and may enter for the
                purpose of showing the premises during normal business hours to prospective renters, buyers, lenders, for smoke
                alarm inspections, and/or for normal inspections and repairs. OWNER is permitted to make all alterations, repairs and
                maintenance that in OWNER'S judgment is necessary to perform.
                21. ASSIGNMENT: RESIDENT agrees not to transfer, assign or sublet the premises or any part thereof.
                22. PARTIAL INVALIDITY: Nothing contained in this Agreement shall be construed as waiving any of the
                OWNER'S or RESIDENT'S rights under the law. If any part of this Agreement shall be in conflict with the law, that
                part shall be void to the extent that it is in conflict, but shall not invalidate this Agreement nor shall it affect the
                validity or enforceability of any other provision of this Agreement.
                22. NO WAIVER: OWNER'S acceptance of rent with knowledge of any default by RESIDENT or waiver by
                OWNER of any breach of any term of this Agreement shall not constitute a waiver of subsequent breaches. Failure to
                require compliance or to exercise any right shall not be constituted as a waiver by OWNER of said term, condition,
                and/or right, and shall not affect the validity or enforceability of any provision of this Agreement.
                23. ATTORNEY FEES: If any legal action or proceedings be brought by either party of this Agreement, the
                prevailing party shall be reimbursed for all reasonable attorney's fees and costs in addition to other damages awarded.
                24. JOINTLY AND SEVERALLY: The undersigned RESIDENTS are jointly and severally responsible and liable
                for all obligations under this agreement.
                25. REPORT TO CREDIT/TENANT AGENCIES: You are hereby notified that a nonpayment, late payment or
                breach of any of the terms of this rental agreement may be submitted/reported to a credit and/or tenant reporting
                agency, and may create a negative credit record on your credit report.
                26. LEAD NOTIFICATION REQUIREMENT: For rental dwellings built before 1978, RESIDENT acknowledges
                receipt of the following: (Please check)
                ___ Lead Based Paint Disclosure Form
                ___ EPA Pamphlet 27. ADDITIONS AND/OR EXCEPTIONS
                _______________________________________________________________
                _______________________________________________________________.
                28. NOTICES: All notices to RESIDENT shall be served at RESIDENT'S premises and all notices to OWNER shall
                be served at _______________________________________________________________.
                29. INVENTORY: The premises contains the following items, that the RESIDENT may use.
                _______________________________________________________________.
                30. KEYS AND ADDDENDUMS: RESIDENT acknowledges receipt of the following which shall be deemed part of
                this Agreement: (Please check)
                ___ Keys #of keys and purposes ___________________________________________
                ___ House Rules ___ Pet Agreement ___ Other ________________________________
                31. ENTIRE AGREEMENT: This Agreement constitutes the entire Agreement between OWNER and RESIDENT.
                No oral agreements have been entered into, and all modifications or notices shall be in writing to be valid.
                32. RECEIPT OF AGREEMENT: The undersigned RESIDENTS have read and understand this Agreement and
                hereby acknowledge receipt of a copy of this Rental Agreement.
                RESIDENT'S Signature ___________________________________________________
                Date__________________
                RESIDENT'S Signature ___________________________________________________
                Date__________________
                OWNER'S or Agent's Signature ____________________________________________
                Date__________________"
  end
end
