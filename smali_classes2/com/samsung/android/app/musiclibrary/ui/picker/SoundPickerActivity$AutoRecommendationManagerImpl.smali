.class final Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity$AutoRecommendationManagerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/picker/single/AutoRecommendationManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AutoRecommendationManagerImpl"
.end annotation


# instance fields
.field private final a:Lcom/samsung/android/app/musiclibrary/ui/widget/round/RoundedFrameLayout;

.field private final b:Landroid/support/v7/widget/SwitchCompat;

.field private final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/musiclibrary/ui/picker/single/AutoRecommendationManager$AutoRecommendationOnListener;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Z)V
    .locals 2

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 427
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity$AutoRecommendationManagerImpl;->d:Z

    .line 435
    sget p2, Lcom/samsung/android/app/musiclibrary/R$id;->auto_recommendation_switch:I

    invoke-virtual {p1, p2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string v0, "activity.findViewById(R.\u2026to_recommendation_switch)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/support/v7/widget/SwitchCompat;

    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity$AutoRecommendationManagerImpl;->b:Landroid/support/v7/widget/SwitchCompat;

    .line 437
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity$AutoRecommendationManagerImpl;->c:Ljava/util/ArrayList;

    .line 440
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity$AutoRecommendationManagerImpl;->b:Landroid/support/v7/widget/SwitchCompat;

    const/4 v0, 0x0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, v0}, Landroid/support/v7/widget/SwitchCompat;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 441
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity$AutoRecommendationManagerImpl;->b:Landroid/support/v7/widget/SwitchCompat;

    .line 442
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity$AutoRecommendationManagerImpl$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity$AutoRecommendationManagerImpl$1;-><init>(Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity$AutoRecommendationManagerImpl;)V

    check-cast v0, Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {p2, v0}, Landroid/support/v7/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 458
    sget p2, Lcom/samsung/android/app/musiclibrary/R$id;->auto_recommendation:I

    invoke-virtual {p1, p2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    move-object p2, p1

    check-cast p2, Lcom/samsung/android/app/musiclibrary/ui/widget/round/RoundedFrameLayout;

    .line 459
    sget v0, Lcom/samsung/android/app/musiclibrary/R$color;->mu_background:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0xf

    invoke-virtual {p2, v1, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/round/RoundedFrameLayout;->a(ILjava/lang/Integer;)V

    .line 460
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity$AutoRecommendationManagerImpl;->d:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p2, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/round/RoundedFrameLayout;->setVisibility(I)V

    .line 461
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity$AutoRecommendationManagerImpl$$special$$inlined$apply$lambda$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity$AutoRecommendationManagerImpl$$special$$inlined$apply$lambda$1;-><init>(Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity$AutoRecommendationManagerImpl;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/round/RoundedFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "activity.findViewById<Ro\u2026      }\n                }"

    .line 458
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity$AutoRecommendationManagerImpl;->a:Lcom/samsung/android/app/musiclibrary/ui/widget/round/RoundedFrameLayout;

    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity$AutoRecommendationManagerImpl;)Ljava/util/ArrayList;
    .locals 0

    .line 427
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity$AutoRecommendationManagerImpl;->c:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static final synthetic b(Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity$AutoRecommendationManagerImpl;)Landroid/support/v7/widget/SwitchCompat;
    .locals 0

    .line 427
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity$AutoRecommendationManagerImpl;->b:Landroid/support/v7/widget/SwitchCompat;

    return-object p0
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/musiclibrary/ui/picker/single/AutoRecommendationManager$AutoRecommendationOnListener;)V
    .locals 1

    const-string v0, "l"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 471
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity$AutoRecommendationManagerImpl;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 479
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity$AutoRecommendationManagerImpl;->a:Lcom/samsung/android/app/musiclibrary/ui/widget/round/RoundedFrameLayout;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/round/RoundedFrameLayout;->setEnabled(Z)V

    .line 480
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity$AutoRecommendationManagerImpl;->b:Landroid/support/v7/widget/SwitchCompat;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/SwitchCompat;->setEnabled(Z)V

    return-void
.end method

.method public b(Lcom/samsung/android/app/musiclibrary/ui/picker/single/AutoRecommendationManager$AutoRecommendationOnListener;)V
    .locals 1

    const-string v0, "l"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 475
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity$AutoRecommendationManagerImpl;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(Z)V
    .locals 1

    .line 484
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity$AutoRecommendationManagerImpl;->b:Landroid/support/v7/widget/SwitchCompat;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/SwitchCompat;->setChecked(Z)V

    return-void
.end method

.method public g()Z
    .locals 1

    .line 488
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity$AutoRecommendationManagerImpl;->a:Lcom/samsung/android/app/musiclibrary/ui/widget/round/RoundedFrameLayout;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/round/RoundedFrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity$AutoRecommendationManagerImpl;->b:Landroid/support/v7/widget/SwitchCompat;

    invoke-virtual {v0}, Landroid/support/v7/widget/SwitchCompat;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
