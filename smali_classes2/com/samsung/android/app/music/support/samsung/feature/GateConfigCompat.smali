.class public Lcom/samsung/android/app/music/support/samsung/feature/GateConfigCompat;
.super Ljava/lang/Object;
.source "GateConfigCompat.java"


# static fields
.field public static final ACTION_SCREEN_TEXT:Ljava/lang/String;

.field public static final EXTRA_SCREEN_TEXT:Ljava/lang/String;

.field public static final GATE_INTENT_ACTION:Ljava/lang/String;

.field public static final GATE_INTENT_EXTRA_ENABLED:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    const-string v0, "com.sec.android.gate.LCDTEXT"

    .line 2
    sput-object v0, Lcom/samsung/android/app/music/support/samsung/feature/GateConfigCompat;->ACTION_SCREEN_TEXT:Ljava/lang/String;

    const-string v0, "ENABLED"

    .line 3
    sput-object v0, Lcom/samsung/android/app/music/support/samsung/feature/GateConfigCompat;->EXTRA_SCREEN_TEXT:Ljava/lang/String;

    const-string v1, "com.sec.android.gate.GATE"

    .line 4
    sput-object v1, Lcom/samsung/android/app/music/support/samsung/feature/GateConfigCompat;->GATE_INTENT_ACTION:Ljava/lang/String;

    .line 5
    sput-object v0, Lcom/samsung/android/app/music/support/samsung/feature/GateConfigCompat;->GATE_INTENT_EXTRA_ENABLED:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isGateEnabled()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/samsung/android/feature/SemGateConfig;->isGateEnabled()Z

    move-result v0

    return v0

    .line 3
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/music/support/sdl/samsung/feature/GateConfigSdlCompat;->isGateEnabled()Z

    move-result v0

    return v0
.end method

.method public static isGateLcdtextEnabled()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/samsung/android/feature/SemGateConfig;->isGateLcdtextEnabled()Z

    move-result v0

    return v0

    .line 3
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/music/support/sdl/samsung/feature/GateConfigSdlCompat;->isGateLcdtextEnabled()Z

    move-result v0

    return v0
.end method

.method public static setGateEnabled(Z)V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p0}, Lcom/samsung/android/feature/SemGateConfig;->setGateEnabled(Z)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/app/music/support/sdl/samsung/feature/GateConfigSdlCompat;->setGateEnabled(Z)V

    :goto_0
    return-void
.end method

.method public static setGateLcdtextEnabled(Z)V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p0}, Lcom/samsung/android/feature/SemGateConfig;->setGateLcdtextEnabled(Z)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/app/music/support/sdl/samsung/feature/GateConfigSdlCompat;->setGateLcdtextEnabled(Z)V

    :goto_0
    return-void
.end method
