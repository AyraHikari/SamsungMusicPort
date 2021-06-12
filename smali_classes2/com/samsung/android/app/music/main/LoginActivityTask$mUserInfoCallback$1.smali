.class public final Lcom/samsung/android/app/music/main/LoginActivityTask$mUserInfoCallback$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/service/milk/login/UserInfoCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/main/LoginActivityTask;-><init>(Lcom/samsung/android/app/music/main/MainActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/main/LoginActivityTask;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/main/LoginActivityTask;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 117
    iput-object p1, p0, Lcom/samsung/android/app/music/main/LoginActivityTask$mUserInfoCallback$1;->a:Lcom/samsung/android/app/music/main/LoginActivityTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/model/UserInfo;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 126
    sget-object v0, Lcom/samsung/android/app/music/fcm/smp/SmpManager;->a:Lcom/samsung/android/app/music/fcm/smp/SmpManager$Companion;

    iget-object v1, p0, Lcom/samsung/android/app/music/main/LoginActivityTask$mUserInfoCallback$1;->a:Lcom/samsung/android/app/music/main/LoginActivityTask;

    invoke-static {v1}, Lcom/samsung/android/app/music/main/LoginActivityTask;->a(Lcom/samsung/android/app/music/main/LoginActivityTask;)Lcom/samsung/android/app/music/main/MainActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/music/main/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "activity.applicationContext"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/app/music/fcm/smp/SmpManager$Companion;->a(Landroid/content/Context;Lcom/samsung/android/app/music/model/UserInfo;)V

    :cond_0
    return-void
.end method

.method public b(Lcom/samsung/android/app/music/model/UserInfo;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 120
    sget-object v0, Lcom/samsung/android/app/music/fcm/smp/SmpManager;->a:Lcom/samsung/android/app/music/fcm/smp/SmpManager$Companion;

    iget-object v1, p0, Lcom/samsung/android/app/music/main/LoginActivityTask$mUserInfoCallback$1;->a:Lcom/samsung/android/app/music/main/LoginActivityTask;

    invoke-static {v1}, Lcom/samsung/android/app/music/main/LoginActivityTask;->a(Lcom/samsung/android/app/music/main/LoginActivityTask;)Lcom/samsung/android/app/music/main/MainActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/music/main/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "activity.applicationContext"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/app/music/fcm/smp/SmpManager$Companion;->a(Landroid/content/Context;Lcom/samsung/android/app/music/model/UserInfo;)V

    :cond_0
    return-void
.end method
