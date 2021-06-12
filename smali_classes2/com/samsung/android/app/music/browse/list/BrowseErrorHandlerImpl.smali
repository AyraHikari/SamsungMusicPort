.class public Lcom/samsung/android/app/music/browse/list/BrowseErrorHandlerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/browse/list/ErrorHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/browse/list/BrowseErrorHandlerImpl$UiDestroyer;
    }
.end annotation


# instance fields
.field private final a:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/BrowseErrorHandlerImpl;->a:Landroid/app/Activity;

    return-void
.end method

.method private static a(Landroid/content/Context;I)Ljava/lang/String;
    .locals 3

    if-nez p0, :cond_0

    const-string p0, "BrowseErrorHandlerImpl"

    const-string p1, "convertCodeToMessage. context is null"

    .line 84
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const v2, 0x7f0b04cb

    .line 103
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v0

    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_1
    const p1, 0x7f0b02f6

    .line 100
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :pswitch_2
    const p1, 0x7f0b03d6

    .line 91
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :pswitch_3
    const p1, 0x7f0b0080

    .line 94
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :pswitch_4
    const p1, 0x7f0b0090

    .line 97
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    const v2, 0x7f0b012d

    .line 105
    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v0

    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x2008
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static a(Landroid/app/Activity;Lcom/samsung/android/app/music/browse/list/BrowseErrorHandlerImpl$UiDestroyer;Ljava/lang/Throwable;Z)V
    .locals 3

    if-nez p0, :cond_0

    const-string p0, "BrowseErrorHandlerImpl"

    const-string p1, "handleError. activity is null"

    .line 47
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 51
    :cond_0
    instance-of v0, p2, Lcom/samsung/android/app/music/network/exception/ServerResponseException;

    if-nez v0, :cond_1

    instance-of v0, p2, Ljava/lang/RuntimeException;

    if-eqz v0, :cond_1

    .line 52
    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    :cond_1
    const-string v0, "BrowseErrorHandlerImpl"

    .line 54
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleError. cause - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 56
    instance-of v1, p2, Lcom/samsung/android/app/music/network/exception/ServerResponseException;

    if-eqz v1, :cond_2

    .line 57
    check-cast p2, Lcom/samsung/android/app/music/network/exception/ServerResponseException;

    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/music/browse/list/BrowseErrorHandlerImpl;->a(Landroid/content/Context;Lcom/samsung/android/app/music/browse/list/BrowseErrorHandlerImpl$UiDestroyer;Lcom/samsung/android/app/music/network/exception/ServerResponseException;)V

    return-void

    :cond_2
    if-eqz p3, :cond_5

    .line 62
    instance-of p1, p2, Ljava/net/SocketTimeoutException;

    if-nez p1, :cond_4

    instance-of p1, p2, Ljava/util/concurrent/TimeoutException;

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const p1, 0x7f0b0219

    .line 65
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/app/music/browse/list/BrowseErrorHandlerImpl;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    :goto_0
    const p1, 0x7f0b0260

    .line 63
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/app/music/browse/list/BrowseErrorHandlerImpl;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/Throwable;Z)V
    .locals 1

    .line 37
    new-instance v0, Lcom/samsung/android/app/music/browse/list/BrowseErrorHandlerImpl$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/browse/list/BrowseErrorHandlerImpl$1;-><init>(Landroid/app/Activity;)V

    invoke-static {p0, v0, p1, p2}, Lcom/samsung/android/app/music/browse/list/BrowseErrorHandlerImpl;->a(Landroid/app/Activity;Lcom/samsung/android/app/music/browse/list/BrowseErrorHandlerImpl$UiDestroyer;Ljava/lang/Throwable;Z)V

    return-void
.end method

.method private static a(Landroid/content/Context;Lcom/samsung/android/app/music/browse/list/BrowseErrorHandlerImpl$UiDestroyer;Lcom/samsung/android/app/music/network/exception/ServerResponseException;)V
    .locals 1

    .line 72
    invoke-virtual {p2}, Lcom/samsung/android/app/music/network/exception/ServerResponseException;->getResultCode()I

    move-result p2

    .line 73
    invoke-static {p0, p2}, Lcom/samsung/android/app/music/browse/list/BrowseErrorHandlerImpl;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/samsung/android/app/music/browse/list/BrowseErrorHandlerImpl;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 75
    invoke-static {p2}, Lcom/samsung/android/app/music/browse/list/BrowseErrorHandlerImpl;->a(I)Z

    move-result p0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 77
    invoke-interface {p1}, Lcom/samsung/android/app/music/browse/list/BrowseErrorHandlerImpl$UiDestroyer;->a()V

    :cond_0
    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    if-nez p0, :cond_0

    const-string p0, "BrowseErrorHandlerImpl"

    const-string p1, "showToast. context is null"

    .line 121
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 124
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "BrowseErrorHandlerImpl"

    const-string p1, "showToast. message is empty"

    .line 125
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 128
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private static a(I)Z
    .locals 0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const/4 p0, 0x0

    return p0

    :pswitch_1
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x2008
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)V
    .locals 2

    .line 33
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseErrorHandlerImpl;->a:Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/samsung/android/app/music/browse/list/BrowseErrorHandlerImpl;->a(Landroid/app/Activity;Ljava/lang/Throwable;Z)V

    return-void
.end method
