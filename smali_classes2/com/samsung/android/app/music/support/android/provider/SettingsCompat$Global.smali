.class public Lcom/samsung/android/app/music/support/android/provider/SettingsCompat$Global;
.super Ljava/lang/Object;
.source "SourceFile"


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
.method static constructor <clinit>()V
    .locals 1

    .line 22
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    const-string v0, "font_size"

    .line 23
    sput-object v0, Lcom/samsung/android/app/music/support/android/provider/SettingsCompat$Global;->FONT_SIZE:Ljava/lang/String;

    const-string v0, "wifi_display_on"

    .line 24
    sput-object v0, Lcom/samsung/android/app/music/support/android/provider/SettingsCompat$Global;->WIFI_DISPLAY_ON:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, "font_size"

    .line 26
    sput-object v0, Lcom/samsung/android/app/music/support/android/provider/SettingsCompat$Global;->FONT_SIZE:Ljava/lang/String;

    const-string v0, "wifi_display_on"

    .line 27
    sput-object v0, Lcom/samsung/android/app/music/support/android/provider/SettingsCompat$Global;->WIFI_DISPLAY_ON:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
