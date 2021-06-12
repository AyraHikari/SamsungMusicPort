.class final Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity$AutoRecommendationManagerImpl$$special$$inlined$apply$lambda$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity$AutoRecommendationManagerImpl;-><init>(Landroid/app/Activity;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity$AutoRecommendationManagerImpl;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity$AutoRecommendationManagerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity$AutoRecommendationManagerImpl$$special$$inlined$apply$lambda$1;->a:Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity$AutoRecommendationManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 462
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity$AutoRecommendationManagerImpl$$special$$inlined$apply$lambda$1;->a:Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity$AutoRecommendationManagerImpl;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity$AutoRecommendationManagerImpl;->b(Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity$AutoRecommendationManagerImpl;)Landroid/support/v7/widget/SwitchCompat;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v7/widget/SwitchCompat;->toggle()V

    .line 463
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity$AutoRecommendationManagerImpl$$special$$inlined$apply$lambda$1;->a:Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity$AutoRecommendationManagerImpl;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity$AutoRecommendationManagerImpl;->a(Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity$AutoRecommendationManagerImpl;)Ljava/util/ArrayList;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 560
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AutoRecommendationManager$AutoRecommendationOnListener;

    .line 464
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity$AutoRecommendationManagerImpl$$special$$inlined$apply$lambda$1;->a:Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity$AutoRecommendationManagerImpl;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity$AutoRecommendationManagerImpl;->b(Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity$AutoRecommendationManagerImpl;)Landroid/support/v7/widget/SwitchCompat;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/widget/SwitchCompat;->isChecked()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AutoRecommendationManager$AutoRecommendationOnListener;->a(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method
