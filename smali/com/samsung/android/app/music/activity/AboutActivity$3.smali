.class Lcom/samsung/android/app/music/activity/AboutActivity$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/activity/AboutActivity;->a(Landroid/widget/TextView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/activity/AboutActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/activity/AboutActivity;)V
    .locals 0

    .line 248
    iput-object p1, p0, Lcom/samsung/android/app/music/activity/AboutActivity$3;->a:Lcom/samsung/android/app/music/activity/AboutActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 251
    invoke-static {}, Lcom/samsung/android/app/music/activity/AboutActivity;->b()Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/activity/AboutActivity$PolicyPage;

    if-nez v0, :cond_0

    .line 253
    invoke-static {}, Lcom/samsung/android/app/music/activity/AboutActivity;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown view for policy page : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 256
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/activity/AboutActivity$3;->a:Lcom/samsung/android/app/music/activity/AboutActivity;

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/activity/AboutPolicyActivity;->a(Landroid/app/Activity;Lcom/samsung/android/app/music/activity/AboutActivity$PolicyPage;)V

    return-void
.end method
