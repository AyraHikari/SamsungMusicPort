.class final Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment$autoRecommendationOnListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/picker/single/AutoRecommendationManager$AutoRecommendationOnListener;


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

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment$autoRecommendationOnListener$1;->a:Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 3

    .line 52
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment$autoRecommendationOnListener$1;->a:Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;->b(Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;)Lcom/samsung/android/app/musiclibrary/ui/picker/single/Previewable;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment$autoRecommendationOnListener$1;->a:Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;)J

    move-result-wide v1

    invoke-interface {v0, v1, v2, p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/Previewable;->b(JZ)V

    return-void
.end method
