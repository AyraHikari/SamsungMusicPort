.class public Lcom/samsung/android/app/music/support/samsung/feature/GateConfigCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ACTION_SCREEN_TEXT:Ljava/lang/String;

.field public static final EXTRA_SCREEN_TEXT:Ljava/lang/String;

.field public static final GATE_INTENT_ACTION:Ljava/lang/String;

.field public static final GATE_INTENT_EXTRA_ENABLED:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 9
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    const-string v0, "com.sec.android.gate.LCDTEXT"

    sput-object v0, Lcom/samsung/android/app/music/support/samsung/feature/GateConfigCompat;->ACTION_SCREEN_TEXT:Ljava/lang/String;

    .line 13
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    const-string v0, "ENABLED"

    sput-object v0, Lcom/samsung/android/app/music/support/samsung/feature/GateConfigCompat;->EXTRA_SCREEN_TEXT:Ljava/lang/String;

    .line 17
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    const-string v0, "com.sec.android.gate.GATE"

    sput-object v0, Lcom/samsung/android/app/music/support/samsung/feature/GateConfigCompat;->GATE_INTENT_ACTION:Ljava/lang/String;

    .line 21
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    const-string v0, "ENABLED"

    sput-object v0, Lcom/samsung/android/app/music/support/samsung/feature/GateConfigCompat;->GATE_INTENT_EXTRA_ENABLED:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isGateEnabled()Z
    .locals 1

    .line 42
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    .line 43
    const v0, 0x0

    return v0

    .line 45
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/music/support/sdl/samsung/feature/GateConfigSdlCompat;->isGateEnabled()Z

    move-result v0

    return v0
.end method

.method public static isGateLcdtextEnabled()Z
    .locals 1

    .line 49
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    .line 50
    const v0, 0x0

    return v0

    .line 52
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/music/support/sdl/samsung/feature/GateConfigSdlCompat;->isGateLcdtextEnabled()Z

    move-result v0

    return v0
.end method

.method public static setGateEnabled(Z)V
    .locals 1

    .line 26
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    .line 27
    invoke-static {p0}, Lcom/samsung/android/feature/SemGateConfig;->setGateEnabled(Z)V

    goto :goto_0

    .line 29
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/app/music/support/sdl/samsung/feature/GateConfigSdlCompat;->setGateEnabled(Z)V

    :goto_0
    return-void
.end method

.method public static setGateLcdtextEnabled(Z)V
    .locals 1

    .line 34
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    .line 35
    invoke-static {p0}, Lcom/samsung/android/feature/SemGateConfig;->setGateLcdtextEnabled(Z)V

    goto :goto_0

    .line 37
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/app/music/support/sdl/samsung/feature/GateConfigSdlCompat;->setGateLcdtextEnabled(Z)V

    :goto_0
    return-void
.end method
