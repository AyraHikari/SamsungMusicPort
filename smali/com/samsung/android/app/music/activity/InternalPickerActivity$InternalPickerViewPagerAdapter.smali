.class final Lcom/samsung/android/app/music/activity/InternalPickerActivity$InternalPickerViewPagerAdapter;
.super Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPagerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/activity/InternalPickerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InternalPickerViewPagerAdapter"
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/activity/InternalPickerActivity;

.field private final b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/activity/InternalPickerActivity;Landroid/content/Context;Landroid/support/v4/app/FragmentManager;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/support/v4/app/FragmentManager;",
            ")V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fragmentManager"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 258
    iput-object p1, p0, Lcom/samsung/android/app/music/activity/InternalPickerActivity$InternalPickerViewPagerAdapter;->a:Lcom/samsung/android/app/music/activity/InternalPickerActivity;

    .line 260
    invoke-direct {p0, p3}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    iput-object p2, p0, Lcom/samsung/android/app/music/activity/InternalPickerActivity$InternalPickerViewPagerAdapter;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(I)J
    .locals 2

    .line 267
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/InternalPickerActivity$InternalPickerViewPagerAdapter;->a:Lcom/samsung/android/app/music/activity/InternalPickerActivity;

    invoke-static {v0}, Lcom/samsung/android/app/music/activity/InternalPickerActivity;->a(Lcom/samsung/android/app/music/activity/InternalPickerActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    int-to-long v0, p1

    return-wide v0
.end method

.method public b(I)Landroid/support/v4/app/Fragment;
    .locals 4

    .line 271
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/InternalPickerActivity$InternalPickerViewPagerAdapter;->a:Lcom/samsung/android/app/music/activity/InternalPickerActivity;

    invoke-static {v0}, Lcom/samsung/android/app/music/activity/InternalPickerActivity;->a(Lcom/samsung/android/app/music/activity/InternalPickerActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    .line 272
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_1

    sget-object p1, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerFactory;->a:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerFactory;

    const v0, 0x110001

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerFactory;->a(IZ)Landroid/support/v4/app/Fragment;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    if-nez v0, :cond_2

    goto :goto_1

    .line 276
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v2, :cond_3

    sget-object p1, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerFactory;->a:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerFactory;

    const v0, 0x10002

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerFactory;->a(IZ)Landroid/support/v4/app/Fragment;

    move-result-object p1

    return-object p1

    :cond_3
    :goto_1
    const/4 v2, 0x2

    if-nez v0, :cond_4

    goto :goto_2

    .line 280
    :cond_4
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v2, :cond_5

    sget-object p1, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerFactory;->a:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerFactory;

    const v0, 0x10003

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerFactory;->a(IZ)Landroid/support/v4/app/Fragment;

    move-result-object p1

    return-object p1

    :cond_5
    :goto_2
    const/4 v2, 0x3

    if-eqz v0, :cond_6

    .line 284
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v2, :cond_6

    sget-object p1, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerFactory;->a:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerFactory;

    const v0, 0x10007

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerFactory;->a(IZ)Landroid/support/v4/app/Fragment;

    move-result-object p1

    return-object p1

    .line 288
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 289
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InternalPickerViewPagerAdapter getItem() wrong position : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 288
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public getCount()I
    .locals 1

    .line 263
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/InternalPickerActivity$InternalPickerViewPagerAdapter;->a:Lcom/samsung/android/app/music/activity/InternalPickerActivity;

    invoke-static {v0}, Lcom/samsung/android/app/music/activity/InternalPickerActivity;->a(Lcom/samsung/android/app/music/activity/InternalPickerActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 3

    .line 295
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/InternalPickerActivity$InternalPickerViewPagerAdapter;->a:Lcom/samsung/android/app/music/activity/InternalPickerActivity;

    invoke-static {v0}, Lcom/samsung/android/app/music/activity/InternalPickerActivity;->a(Lcom/samsung/android/app/music/activity/InternalPickerActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    goto :goto_0

    .line 296
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/app/music/activity/InternalPickerActivity$InternalPickerViewPagerAdapter;->b:Landroid/content/Context;

    const v0, 0x7f0b03da

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    goto :goto_3

    :cond_1
    :goto_0
    const/4 v1, 0x1

    if-nez v0, :cond_2

    goto :goto_1

    .line 297
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v1, :cond_3

    iget-object p1, p0, Lcom/samsung/android/app/music/activity/InternalPickerActivity$InternalPickerViewPagerAdapter;->b:Landroid/content/Context;

    const v0, 0x7f0b0082

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    goto :goto_3

    :cond_3
    :goto_1
    const/4 v1, 0x2

    if-nez v0, :cond_4

    goto :goto_2

    .line 298
    :cond_4
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v1, :cond_5

    iget-object p1, p0, Lcom/samsung/android/app/music/activity/InternalPickerActivity$InternalPickerViewPagerAdapter;->b:Landroid/content/Context;

    const v0, 0x7f0b0091

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    goto :goto_3

    :cond_5
    :goto_2
    const/4 v1, 0x3

    if-eqz v0, :cond_6

    .line 299
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_6

    iget-object p1, p0, Lcom/samsung/android/app/music/activity/InternalPickerActivity$InternalPickerViewPagerAdapter;->b:Landroid/content/Context;

    const v0, 0x7f0b014a

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    :goto_3
    return-object p1

    .line 300
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wrong position | position: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method
