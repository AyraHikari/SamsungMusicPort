.class final Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity$AutoRecommendationManagerImpl$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity$AutoRecommendationManagerImpl$1;->a:Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity$AutoRecommendationManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    .line 443
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object p1

    const-string v0, "6007"

    if-eqz p2, :cond_0

    const-string v1, "1"

    goto :goto_0

    :cond_0
    const-string v1, "0"

    :goto_0
    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity$AutoRecommendationManagerImpl$1;->a:Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity$AutoRecommendationManagerImpl;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity$AutoRecommendationManagerImpl;->a(Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity$AutoRecommendationManagerImpl;)Ljava/util/ArrayList;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 560
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AutoRecommendationManager$AutoRecommendationOnListener;

    .line 453
    invoke-interface {v0, p2}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AutoRecommendationManager$AutoRecommendationOnListener;->a(Z)V

    goto :goto_1

    :cond_1
    return-void
.end method
