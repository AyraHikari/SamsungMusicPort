.class Lcom/samsung/android/app/music/widget/MusicSubTabLayout$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/widget/MusicSubTabLayout;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/design/widget/TabLayout$Tab;

.field final synthetic b:Lcom/samsung/android/app/music/widget/MusicSubTabLayout;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/widget/MusicSubTabLayout;Landroid/support/design/widget/TabLayout$Tab;)V
    .locals 0

    .line 219
    iput-object p1, p0, Lcom/samsung/android/app/music/widget/MusicSubTabLayout$1;->b:Lcom/samsung/android/app/music/widget/MusicSubTabLayout;

    iput-object p2, p0, Lcom/samsung/android/app/music/widget/MusicSubTabLayout$1;->a:Landroid/support/design/widget/TabLayout$Tab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 3

    .line 222
    iget-object v0, p0, Lcom/samsung/android/app/music/widget/MusicSubTabLayout$1;->a:Landroid/support/design/widget/TabLayout$Tab;

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$Tab;->seslGetTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/widget/TextViewExtensionKt;->a(Landroid/widget/TextView;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MusicSubTabLayout"

    .line 223
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "applyTabScrollModeIfTabItemEllipsis.onPreDraw. this tab ellipsis. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/music/widget/MusicSubTabLayout$1;->a:Landroid/support/design/widget/TabLayout$Tab;

    .line 225
    invoke-virtual {v2}, Landroid/support/design/widget/TabLayout$Tab;->seslGetTextView()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 223
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    iget-object v0, p0, Lcom/samsung/android/app/music/widget/MusicSubTabLayout$1;->b:Lcom/samsung/android/app/music/widget/MusicSubTabLayout;

    new-instance v1, Lcom/samsung/android/app/music/widget/MusicSubTabLayout$1$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/widget/MusicSubTabLayout$1$1;-><init>(Lcom/samsung/android/app/music/widget/MusicSubTabLayout$1;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/widget/MusicSubTabLayout;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
