.class public Lcom/samsung/android/app/music/support/android/provider/SettingsCompat$Global;
.super Ljava/lang/Object;
.source "SettingsCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/support/android/provider/SettingsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Global"
.end annotation


# static fields
.field public static final FONT_SIZE:Ljava/lang/String;

.field public static final WIFI_DISPLAY_ON:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    const-string v1, "wifi_display_on"

    const-string v2, "font_size"

    if-eqz v0, :cond_0

    .line 2
    sput-object v2, Lcom/samsung/android/app/music/support/android/provider/SettingsCompat$Global;->FONT_SIZE:Ljava/lang/String;

    .line 3
    sput-object v1, Lcom/samsung/android/app/music/support/android/provider/SettingsCompat$Global;->WIFI_DISPLAY_ON:Ljava/lang/String;

    goto :goto_0

    .line 4
    :cond_0
    sput-object v2, Lcom/samsung/android/app/music/support/android/provider/SettingsCompat$Global;->FONT_SIZE:Ljava/lang/String;

    .line 5
    sput-object v1, Lcom/samsung/android/app/music/support/android/provider/SettingsCompat$Global;->WIFI_DISPLAY_ON:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
