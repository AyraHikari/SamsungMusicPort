.class final Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AbsMultipleItemPickerFragment$onSelectAllClickListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AbsMultipleItemPickerFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AbsMultipleItemPickerFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AbsMultipleItemPickerFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AbsMultipleItemPickerFragment$onSelectAllClickListener$1;->a:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AbsMultipleItemPickerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 52
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AbsMultipleItemPickerFragment$onSelectAllClickListener$1;->a:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AbsMultipleItemPickerFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AbsMultipleItemPickerFragment;->isResumed()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 56
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AbsMultipleItemPickerFragment$onSelectAllClickListener$1;->a:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AbsMultipleItemPickerFragment;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AbsMultipleItemPickerFragment;->b(Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AbsMultipleItemPickerFragment;)Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_1
    iget-object p1, p1, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;->b:Landroid/widget/CheckBox;

    const-string v0, "selectAllViewHolder!!.checkBox"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    .line 58
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AbsMultipleItemPickerFragment$onSelectAllClickListener$1;->a:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AbsMultipleItemPickerFragment;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AbsMultipleItemPickerFragment;->g(Z)V

    .line 59
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object p1

    .line 60
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AbsMultipleItemPickerFragment$onSelectAllClickListener$1;->a:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AbsMultipleItemPickerFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AbsMultipleItemPickerFragment;->getScreenId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1021"

    .line 59
    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
