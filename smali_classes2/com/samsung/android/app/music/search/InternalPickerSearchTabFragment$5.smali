.class Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 237
    iput-object p1, p0, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment$5;->a:Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 240
    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "InternalPickerSearchTabFragment"

    const-string v1, "search view get clicked."

    .line 241
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    iget-object v0, p0, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment$5;->a:Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;->a(Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;Landroid/view/View;)V

    :cond_0
    return-void
.end method
