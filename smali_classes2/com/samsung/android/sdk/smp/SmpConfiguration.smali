.class public Lcom/samsung/android/sdk/smp/SmpConfiguration;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/smp/SmpConfiguration$ChannelInfo;
    }
.end annotation


# static fields
.field private static a:I


# direct methods
.method public static a()I
    .locals 1

    .line 310
    sget v0, Lcom/samsung/android/sdk/smp/SmpConfiguration;->a:I

    return v0
.end method

.method public static a(I)V
    .locals 0

    .line 301
    sput p0, Lcom/samsung/android/sdk/smp/SmpConfiguration;->a:I

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/samsung/android/sdk/smp/SmpConfiguration$ChannelInfo;)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    .line 393
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p1}, Lcom/samsung/android/sdk/smp/SmpConfiguration$ChannelInfo;->a(Lcom/samsung/android/sdk/smp/SmpConfiguration$ChannelInfo;)Ljava/util/Map;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/smp/common/SmpInterfaceImpl;->a(Landroid/content/Context;Ljava/util/Map;)V

    return-void

    .line 391
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "channelInfo is null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 388
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "context is null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
