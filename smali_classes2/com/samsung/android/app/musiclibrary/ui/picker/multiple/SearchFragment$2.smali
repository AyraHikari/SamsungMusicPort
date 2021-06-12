.class Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;)V
    .locals 0

    .line 247
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment$2;->a:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 250
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment$2;->a:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->isResumed()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 254
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment$2;->a:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->c(Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;)Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;

    move-result-object p1

    iget-object p1, p1, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;->b:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    .line 256
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment$2;->a:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v0

    if-nez v0, :cond_1

    .line 258
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment$2;->a:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;I)I

    .line 259
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment$2;->a:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;Z)V

    return-void

    .line 263
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment$2;->a:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->g(Z)V

    .line 264
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment$2;->a:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->getScreenId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1021"

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
