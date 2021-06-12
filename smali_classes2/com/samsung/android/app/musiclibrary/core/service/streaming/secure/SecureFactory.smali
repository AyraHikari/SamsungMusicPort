.class public final Lcom/samsung/android/app/musiclibrary/core/service/streaming/secure/SecureFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/service/streaming/secure/SecureFactory$None;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SecureFactory"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createSecure(ILjava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/service/streaming/secure/ISecure;
    .locals 3

    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_0

    .line 20
    sget-object p1, Lcom/samsung/android/app/musiclibrary/core/service/streaming/secure/SecureFactory;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ". It is not supported."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 14
    :pswitch_0
    new-instance p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/secure/SecureAes;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/secure/SecureAes;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 16
    :pswitch_1
    new-instance p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/secure/SecureXor;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/secure/SecureXor;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 18
    :pswitch_2
    new-instance p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/secure/SecureFactory$None;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/secure/SecureFactory$None;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/streaming/secure/SecureFactory$1;)V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
