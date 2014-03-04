<%@ Page Language="c#" Inherits="ReservationConfirmationPage" MasterPageFile="~/Web/StandardTemplate.master" CodeFile="ReservationConfirmationPage.aspx.cs" %>

<%@ Import Namespace="SpringAir.Domain" %>

<asp:Content ID="body" ContentPlaceHolderID="body" runat="server">
    <h4 align="center">
        <asp:Label ID="caption" runat="server" /></h4>
    <p align="center">
        <asp:Label ID="confirmationLabel" runat="server" />
    </p>
    <br />
    <br />
    <asp:Repeater ID="itinerary" runat="server">
        <HeaderTemplate>
            <table border="0" width="90%" cellpadding="0" cellspacing="0" align="center" class="suggestedTable">
                <thead>
                    <tr class="suggestedTableCaption">
                        <th colspan="5">
                            <%= GetMessage("itinerary") %>
                        </th>
                    </tr>
                    <tr class="suggestedTableColnames">
                        <th>
                            <%= GetMessage("flightNumber") %>
                        </th>
                        <th>
                            <%= GetMessage("departureDate") %>
                        </th>
                        <th>
                            <%= GetMessage("departureAirport") %>
                        </th>
                        <th>
                            <%= GetMessage("destinationAirport") %>
                        </th>
                        <th>
                            <%= GetMessage("aircraft") %>
                        </th>
                    </tr>
                </thead>
                <tbody>
        </HeaderTemplate>
        <ItemTemplate>
            <tr class="suggestedTableRow">
                <td><%# ((Flight) Container.DataItem).FlightNumber %></td>
                <td><%# ((Flight) Container.DataItem).DepartureTime.ToString() %></td>
                <td><%# ((Flight) Container.DataItem).DepartureAirport.Description %></td>
                <td><%# ((Flight) Container.DataItem).DestinationAirport.Description %></td>
                <td><%# ((Flight) Container.DataItem).Aircraft.Model %></td>
            </tr>
        </ItemTemplate>
        <FooterTemplate>
            </tbody></table>
        </FooterTemplate>
    </asp:Repeater>


    <table cellspacing="0" cellpadding="0" width="90%" align="center" border="0">
        <tr>
            <td class="buttonBar">
                <br />
                <asp:Button runat="server" Text="Save as Pdf" ID="SavePdfButton" OnClick="SavePdfButton_Click"></asp:Button>
                &nbsp;&nbsp;&nbsp;
                <asp:Button runat="server" Text="Save as Word" ID="SaveWordButton" OnClick="SaveWordButton_Click"></asp:Button>
            </td>
        </tr>
    </table>

</asp:Content>
