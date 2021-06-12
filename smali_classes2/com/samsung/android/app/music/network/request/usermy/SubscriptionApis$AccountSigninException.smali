.class public Lcom/samsung/android/app/music/network/request/usermy/SubscriptionApis$AccountSigninException;
.super Ljava/lang/Throwable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/network/request/usermy/SubscriptionApis;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AccountSigninException"
.end annotation


# instance fields
.field private final status:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 177
    invoke-direct {p0}, Ljava/lang/Throwable;-><init>()V

    .line 179
    iput p1, p0, Lcom/samsung/android/app/music/network/request/usermy/SubscriptionApis$AccountSigninException;->status:I

    return-void
.end method


# virtual methods
.method public getErrorMsg()Ljava/lang/String;
    .locals 2

    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Account Sign-in failed : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/app/music/network/request/usermy/SubscriptionApis$AccountSigninException;->status:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
