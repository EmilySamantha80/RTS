﻿<%@ Page Title="Merwin's Ringtone Search" Language="C#" MasterPageFile="~/RTS.Master" AutoEventWireup="true" CodeBehind="ConvertRtttlToMidi.aspx.cs" Inherits="RTS.ConvertRtttlToMidi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col-sm-1 col-lg-2"></div>
        <div class="col-sm-10 col-lg-8">
            <div class="panel panel-primary">
                <div class="panel-heading">
                    <div class="row">
                        <div class="col-sm-12">
                            <h2 class="o-application--panel-heading o-application--white" style="font-size:2em;">Convert your own RTTTL to MIDI</h2>
                        </div>
                    </div>
                </div>
                <div class="panel-body" style="">
                    <div class="row">
                        <div class="col-sm-12">
                            <label for="<%=RtttlText.ClientID %>">RTTTL Text</label><br />
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-12">
                            <textarea id="RtttlText" style="height:100px;width:100%;" runat="server"></textarea>
                        </div>
                    </div>
                    <div class="row" style="margin-top:5px;">
                        <div class="col-sm-12">
                            <asp:Button ID="ConvertToMidi" runat="server" Text="Convert to MIDI" class="btn btn-primary" OnClick="ConvertToMidi_Click" />
                        </div>
                    </div>
                    <div class="row" style="margin-top:10px;">
                        <div class="col-sm-12">
                            <span style="font-weight:600">Note:</span> If you hear 3 rising tones instead of your ringtone, it means that your RTTTL text has errors in it.
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
