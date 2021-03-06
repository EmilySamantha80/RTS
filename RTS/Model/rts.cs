﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace RTS.Model
{
    [NPoco.TableName("Setting")]
    [NPoco.ExplicitColumns]
    [NPoco.PrimaryKey("SettingName", AutoIncrement = false)]
    public class Setting
    {
        [NPoco.Column]
        public string SettingName { get; set; }
        [NPoco.Column]
        public string SettingValue { get; set; }

    }

    [NPoco.TableName("Category")]
    [NPoco.ExplicitColumns]
    [NPoco.PrimaryKey("CategoryCode", AutoIncrement = false)]
    public class Category
    {
        [NPoco.Column]
        public string CategoryCode { get; set; }
        [NPoco.Column]
        public string CategoryName { get; set; }
        [NPoco.Column]
        public int SortId { get; set; }

    }

    [NPoco.TableName("Visitor")]
    [NPoco.ExplicitColumns]
    [NPoco.PrimaryKey("IPAddress", AutoIncrement = false)]
    public class Visitor
    {
        [NPoco.Column]
        public string IPAddress { get; set; }
        [NPoco.Column]
        public DateTime FirstVisit { get; set; }
        [NPoco.Column]
        public DateTime LastVisit { get; set; }
    }

    [NPoco.TableName("Tone")]
    [NPoco.ExplicitColumns]
    [NPoco.PrimaryKey("ToneId", AutoIncrement = false)]
    public class Tone
    {
        [NPoco.Column]
        public Int32 ToneId { get; set; }
        [NPoco.Column]
        public bool Available { get; set; }
        [NPoco.Column]
        public string Category { get; set; }
        [NPoco.Column]
        public string Artist { get; set; }
        [NPoco.Column]
        public string Title { get; set; }
        [NPoco.Column]
        public int Counter { get; set; }
        [NPoco.Column]
        public DateTime Added { get; set; }
        [NPoco.Column]
        public string Rtttl { get; set; }
    }
}