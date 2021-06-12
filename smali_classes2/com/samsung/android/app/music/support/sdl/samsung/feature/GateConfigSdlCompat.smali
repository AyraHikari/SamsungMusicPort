.class public Lcom/samsung/android/app/music/support/sdl/samsung/feature/GateConfigSdlCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ACTION_SCREEN_TEXT:Ljava/lang/String; = "com.sec.android.gate.LCDTEXT"

.field public static final EXTRA_SCREEN_TEXT:Ljava/lang/String; = "ENABLED"

.field public static final GATE_INTENT_ACTION:Ljava/lang/String; = "com.sec.android.gate.GATE"

.field public static final GATE_INTENT_EXTRA_ENABLED:Ljava/lang/String; = "ENABLED"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isGateEnabled()Z
    .locals 2

    .line 30
    sget v0, Lcom/samsung/android/app/music/support/sdl/Sdl;->VERSION:I

    const/16 v1, 0x76d

    if-lt v0, v1, :cond_0

    .line 31
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isGateLcdtextEnabled()Z
    .locals 2

    .line 37
    sget v0, Lcom/samsung/android/app/music/support/sdl/Sdl;->VERSION:I

    const/16 v1, 0x76d

    if-lt v0, v1, :cond_0

    .line 38
    invoke-static {}, Landroid/util/GateConfig;->isGateLcdtextEnabled()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static setGateEnabled(Z)V
    .locals 2

    .line 18
    sget v0, Lcom/samsung/android/app/music/support/sdl/Sdl;->VERSION:I

    const/16 v1, 0x76d

    if-lt v0, v1, :cond_0

    .line 19
    invoke-static {p0}, Landroid/util/GateConfig;->setGateEnabled(Z)V

    :cond_0
    return-void
.end method

.method public static setGateLcdtextEnabled(Z)V
    .locals 2

    .line 24
    sget v0, Lcom/samsung/android/app/music/support/sdl/Sdl;->VERSION:I

    const/16 v1, 0x76d

    if-lt v0, v1, :cond_0

    .line 25
    invoke-static {p0}, Landroid/util/GateConfig;->setGateLcdtextEnabled(Z)V

    :cond_0
    return-void
.end method
