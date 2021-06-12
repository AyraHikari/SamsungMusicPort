.class public final Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player$DefaultImpls;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation


# direct methods
.method public static synthetic sendCustom$default(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 18
    check-cast p2, Ljava/lang/String;

    :cond_0
    invoke-interface {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player;->sendCustom(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 0
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: sendCustom"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic tag$annotations()V
    .locals 0

    return-void
.end method
