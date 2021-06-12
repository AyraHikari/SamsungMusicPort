.class Lcom/samsung/android/app/music/activity/AboutPolicyActivity$AsyncPolicyLoadTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/activity/AboutPolicyActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AsyncPolicyLoadTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/samsung/android/app/music/activity/AboutPolicyActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/activity/AboutPolicyActivity;)V
    .locals 1

    .line 285
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 286
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/activity/AboutPolicyActivity$AsyncPolicyLoadTask;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Integer;)Ljava/lang/String;
    .locals 2

    .line 300
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/AboutPolicyActivity$AsyncPolicyLoadTask;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-nez v0, :cond_0

    const-string p1, ""

    return-object p1

    :cond_0
    const/4 v1, 0x0

    .line 304
    aget-object p1, p1, v1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/activity/AboutPolicyTextLoader;->b(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected a(Ljava/lang/String;)V
    .locals 3

    .line 309
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/AboutPolicyActivity$AsyncPolicyLoadTask;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v1, 0x7f130126

    .line 313
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x7f130127

    .line 314
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 315
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 281
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/activity/AboutPolicyActivity$AsyncPolicyLoadTask;->a([Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 281
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/activity/AboutPolicyActivity$AsyncPolicyLoadTask;->a(Ljava/lang/String;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .line 291
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/AboutPolicyActivity$AsyncPolicyLoadTask;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v1, 0x7f130126

    .line 295
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
