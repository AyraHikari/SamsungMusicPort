.class public Lcom/samsung/android/sdk/ppmt/PpmtFirebaseInstanceIdService;
.super Lcom/google/firebase/iid/FirebaseInstanceIdService;
.source "SourceFile"


# static fields
.field private static final b:Ljava/lang/String; = "PpmtFirebaseInstanceIdService"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/google/firebase/iid/FirebaseInstanceIdService;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 18
    invoke-virtual {p0}, Lcom/samsung/android/sdk/ppmt/PpmtFirebaseInstanceIdService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/ppmt/Ppmt;->a(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 19
    invoke-static {}, Lcom/google/firebase/iid/FirebaseInstanceId;->a()Lcom/google/firebase/iid/FirebaseInstanceId;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->e()Ljava/lang/String;

    move-result-object v0

    .line 21
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 22
    sget-object v2, Lcom/samsung/android/sdk/ppmt/PpmtFirebaseInstanceIdService;->b:Ljava/lang/String;

    const-string v3, "token refreshed"

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/ppmt/common/Slog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    invoke-virtual {p0}, Lcom/samsung/android/sdk/ppmt/PpmtFirebaseInstanceIdService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1, v0}, Lcom/samsung/android/sdk/ppmt/Ppmt;->a(Landroid/content/Context;ILjava/lang/String;)V

    :cond_0
    return-void
.end method
