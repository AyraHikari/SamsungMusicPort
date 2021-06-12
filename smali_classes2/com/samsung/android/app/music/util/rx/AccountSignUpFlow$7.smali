.class final Lcom/samsung/android/app/music/util/rx/AccountSignUpFlow$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/util/rx/AccountSignUpFlow;->b(Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;

.field final synthetic b:Lcom/samsung/android/app/music/service/milk/login/UserInfoCallback;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;Lcom/samsung/android/app/music/service/milk/login/UserInfoCallback;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lcom/samsung/android/app/music/util/rx/AccountSignUpFlow$7;->a:Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;

    iput-object p2, p0, Lcom/samsung/android/app/music/util/rx/AccountSignUpFlow$7;->b:Lcom/samsung/android/app/music/service/milk/login/UserInfoCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 163
    iget-object v0, p0, Lcom/samsung/android/app/music/util/rx/AccountSignUpFlow$7;->a:Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;

    iget-object v1, p0, Lcom/samsung/android/app/music/util/rx/AccountSignUpFlow$7;->b:Lcom/samsung/android/app/music/service/milk/login/UserInfoCallback;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->b(Lcom/samsung/android/app/music/service/milk/login/UserInfoCallback;)V

    return-void
.end method
