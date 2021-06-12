.class final Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment$onItemClickListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment$onItemClickListener$1;->a:Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/view/View;IJ)V
    .locals 0

    const-string p2, "<anonymous parameter 0>"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment$onItemClickListener$1;->a:Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;

    invoke-static {p1, p3, p4}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;J)V

    .line 41
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment$onItemClickListener$1;->a:Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;->b(Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;)Lcom/samsung/android/app/musiclibrary/ui/picker/single/Previewable;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    .line 42
    :cond_0
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment$onItemClickListener$1;->a:Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;

    invoke-static {p2}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;)J

    move-result-wide p2

    .line 43
    iget-object p4, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment$onItemClickListener$1;->a:Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;

    invoke-virtual {p4}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p4

    if-eqz p4, :cond_2

    check-cast p4, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AutoRecommendationManager;

    invoke-interface {p4}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AutoRecommendationManager;->g()Z

    move-result p4

    .line 41
    invoke-interface {p1, p2, p3, p4}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/Previewable;->a(JZ)V

    .line 46
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment$onItemClickListener$1;->a:Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;

    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment$onItemClickListener$1;->a:Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;

    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;->g()I

    move-result p2

    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 47
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object p2

    iget-object p3, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment$onItemClickListener$1;->a:Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;

    invoke-virtual {p3}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;->getScreenId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3, p1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void

    .line 43
    :cond_2
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type com.samsung.android.app.musiclibrary.ui.picker.single.AutoRecommendationManager"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
