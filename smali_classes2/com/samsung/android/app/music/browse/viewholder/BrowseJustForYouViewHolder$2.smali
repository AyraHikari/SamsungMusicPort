.class Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/service/milk/login/UserInfoReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder;)V
    .locals 0

    .line 310
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder$2;->a:Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/model/UserInfo;)V
    .locals 5

    .line 313
    invoke-static {}, Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " onReceive isAccountSignedIn : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/UserInfo;->isAccountSignedIn()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/UserInfo;->isAccountSignedIn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 315
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/UserInfo;->getName()Ljava/lang/String;

    move-result-object p1

    .line 316
    invoke-static {}, Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive name : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 318
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder$2;->a:Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder;

    invoke-static {v0}, Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder;->b(Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder$2;->a:Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder;

    .line 319
    invoke-static {v1}, Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder;->a(Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b0460

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 318
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
