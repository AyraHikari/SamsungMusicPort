.class Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/service/milk/login/UserInfoReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger;)V
    .locals 0

    .line 193
    iput-object p1, p0, Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger$1;->a:Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/model/UserInfo;)V
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger$1;->a:Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger;

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger;->a(Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger;Lcom/samsung/android/app/music/model/UserInfo;)Z

    return-void
.end method
