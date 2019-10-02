
    function ValidateDOB(sender, args) {
        //Get the date from the TextBox.
        var dateString = document.getElementById(sender.controltovalidate).value;
        var regex = /(((0|1)[0-9]|2[0-9]|3[0-1])\/(0[1-9]|1[0-2])\/((19|20)\d\d))$/;

        //Check whether valid dd/MM/yyyy Date Format.
        if (regex.test(dateString)) {
            var parts = dateString.split("/");
            var dtDOB = new Date(parts[1] + "/" + parts[0] + "/" + parts[2]);
            var dtCurrent = new Date();
            sender.innerHTML = "Eligibility 18 years ONLY."
            if (dtCurrent.getFullYear() - dtDOB.getFullYear() < 18) {
                args.IsValid = false;
                return;
            }

            if (dtCurrent.getFullYear() - dtDOB.getFullYear() == 18) {

                //CD: 11/06/2018 and DB: 15/07/2000. Will turned 18 on 15/07/2018.
                if (dtCurrent.getMonth() < dtDOB.getMonth()) {
                    args.IsValid = false;
                    return;
                }
                if (dtCurrent.getMonth() == dtDOB.getMonth()) {
                    //CD: 11/06/2018 and DB: 15/06/2000. Will turned 18 on 15/06/2018.
                    if (dtCurrent.getDate() < dtDOB.getDate()) {
                        args.IsValid = false;
                        return;
                    }
                }
            }
            args.IsValid = true;
        } else {
            sender.innerHTML = "Enter date in dd/MM/yyyy format ONLY."
            args.IsValid = false;
        }
    }
