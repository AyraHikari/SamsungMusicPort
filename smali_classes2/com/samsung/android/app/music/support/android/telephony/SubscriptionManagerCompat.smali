.class public Lcom/samsung/android/app/music/support/android/telephony/SubscriptionManagerCompat;
.super Ljava/lang/Object;
.source "SubscriptionManagerCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/support/android/telephony/SubscriptionManagerCompat$SimSlot;,
        Lcom/samsung/android/app/music/support/android/telephony/SubscriptionManagerCompat$SimSlotType;
    }
.end annotation


# static fields
.field private static final SIM_STATE_ABSENT:Ljava/lang/String; = "ABSENT"

.field private static final SIM_STATE_KEY:Ljava/lang/String; = "gsm.sim.state"

.field private static final SIM_STATE_READY:Ljava/lang/String; = "READY"

.field private static final SIM_STATE_UNKNOWN:Ljava/lang/String; = "UNKNOWN"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getActiveSimSlot(Landroid/content/Context;)I
    .locals 1

    .line 1
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p0}, Lcom/samsung/android/app/music/support/android/telephony/SubscriptionManagerCompat;->getActiveSimSlotFromSep(Landroid/content/Context;)I

    move-result p0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/music/support/android/telephony/SubscriptionManagerCompat;->getActiveSimSlotFromSdl()I

    move-result p0

    :goto_0
    return p0
.end method

.method private static getActiveSimSlotFromSdl()I
    .locals 6

    const-string v0, "gsm.sim.state"

    .line 1
    invoke-static {v0}, Lcom/samsung/android/app/music/support/sdl/android/os/SystemPropertiesSdlCompat;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 3
    array-length v1, v0

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v4, :cond_1

    :cond_0
    move v2, v3

    goto :goto_0

    .line 4
    :cond_1
    array-length v1, v0

    if-ne v1, v2, :cond_3

    .line 5
    aget-object v1, v0, v3

    const-string v5, "READY"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    aget-object v1, v0, v4

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 6
    :cond_2
    aget-object v0, v0, v4

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v2, v4

    goto :goto_0

    :cond_3
    const/4 v2, -0x1

    :goto_0
    return v2
.end method

.method private static getActiveSimSlotFromSep(Landroid/content/Context;)I
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 3
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubscriptionId()I

    move-result v0

    .line 4
    invoke-virtual {p0, v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object p0

    .line 5
    invoke-virtual {p0}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result p0

    if-nez p0, :cond_2

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    :cond_2
    :goto_0
    return v1
.end method
