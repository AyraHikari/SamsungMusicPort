.class Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;->a(Landroid/support/v7/app/AppCompatActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;)V
    .locals 0

    .line 226
    iput-object p1, p0, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment$4;->a:Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1

    if-eqz p2, :cond_0

    .line 229
    iget-object p2, p0, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment$4;->a:Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;

    invoke-virtual {p2}, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;->isDetached()Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "InternalPickerSearchTabFragment"

    const-string v0, "search view get focus."

    .line 230
    invoke-static {p2, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    iget-object p2, p0, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment$4;->a:Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;

    invoke-static {p2, p1}, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;->a(Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;Landroid/view/View;)V

    goto :goto_0

    :cond_0
    const-string p1, "InternalPickerSearchTabFragment"

    const-string p2, "search view lost focus."

    .line 233
    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
