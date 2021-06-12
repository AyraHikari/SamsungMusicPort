.class public Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity;
.super Lcom/samsung/android/app/music/activity/BaseServiceActivity;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity$SplitImageViewerAdapter;,
        Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity$ImageViewerAdapter;
    }
.end annotation


# instance fields
.field protected a:Lcom/samsung/android/app/music/milk/store/widget/BaseViewPager;

.field protected b:Landroid/view/View;

.field protected c:Landroid/widget/TextView;

.field private d:Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity$ImageViewerAdapter;

.field private e:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;-><init>()V

    const/4 v0, 0x0

    .line 48
    iput v0, p0, Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity;->e:I

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 52
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f04013b

    .line 54
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity;->setContentView(I)V

    .line 56
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 58
    invoke-virtual {p1}, Landroid/app/ActionBar;->hide()V

    :cond_0
    const p1, 0x7f1303bf

    .line 61
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/milk/store/widget/BaseViewPager;

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity;->a:Lcom/samsung/android/app/music/milk/store/widget/BaseViewPager;

    const p1, 0x7f1301c5

    .line 62
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity;->b:Landroid/view/View;

    const p1, 0x7f1303c0

    .line 63
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity;->c:Landroid/widget/TextView;

    .line 66
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "contentLists"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    .line 68
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "contentDescriptions"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-nez p1, :cond_1

    const-string p1, "MultipleImageViewerActivity"

    const-string v1, "onCreate : url is null!!"

    .line 70
    invoke-static {p1, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 74
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "split_view"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    const-string v3, "MultipleImageViewerActivity"

    .line 76
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCreate : url size - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_2

    .line 78
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 79
    new-instance v3, Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity$SplitImageViewerAdapter;

    invoke-direct {v3, p0, p1, v0}, Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity$SplitImageViewerAdapter;-><init>(Landroid/app/Activity;Ljava/util/List;I)V

    iput-object v3, p0, Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity;->d:Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity$ImageViewerAdapter;

    goto :goto_0

    .line 81
    :cond_2
    new-instance v3, Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity$ImageViewerAdapter;

    invoke-direct {v3, p1, v0}, Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity$ImageViewerAdapter;-><init>(Ljava/util/List;I)V

    iput-object v3, p0, Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity;->d:Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity$ImageViewerAdapter;

    .line 83
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity;->a:Lcom/samsung/android/app/music/milk/store/widget/BaseViewPager;

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity;->d:Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity$ImageViewerAdapter;

    invoke-virtual {v0, v3}, Lcom/samsung/android/app/music/milk/store/widget/BaseViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 84
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity;->a:Lcom/samsung/android/app/music/milk/store/widget/BaseViewPager;

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/music/milk/store/widget/BaseViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 85
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity;->b:Landroid/view/View;

    new-instance v3, Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity$1;

    invoke-direct {v3, p0}, Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity$1;-><init>(Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity;->b:Landroid/view/View;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f0b00cd

    .line 95
    invoke-virtual {p0, v4}, Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v4, 0x7f0b03e3

    invoke-virtual {p0, v4}, Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 94
    invoke-virtual {v0, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 97
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x1

    if-le p1, v0, :cond_3

    if-nez v1, :cond_3

    .line 98
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity;->c:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 101
    :cond_3
    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity;->onPageSelected(I)V

    .line 103
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object p1

    const-string v0, "933"

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->c(Ljava/lang/String;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 108
    invoke-super {p0}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->onDestroy()V

    .line 109
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity;->a:Lcom/samsung/android/app/music/milk/store/widget/BaseViewPager;

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/music/milk/store/widget/BaseViewPager;->removeOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 8

    const-string v0, "MultipleImageViewerActivity"

    .line 118
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPageSelected : pos - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mCurrentPosition : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity;->e:I

    if-le p1, v0, :cond_0

    .line 122
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v0

    const-string v1, "933"

    const-string v2, "9354"

    .line 123
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 124
    :cond_0
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity;->e:I

    if-ge p1, v0, :cond_1

    .line 125
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v0

    const-string v1, "933"

    const-string v2, "9355"

    .line 126
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    :cond_1
    :goto_0
    iput p1, p0, Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity;->e:I

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity;->a:Lcom/samsung/android/app/music/milk/store/widget/BaseViewPager;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/milk/store/widget/BaseViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 132
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity;->c:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity;->a:Lcom/samsung/android/app/music/milk/store/widget/BaseViewPager;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/widget/BaseViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_2

    .line 135
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 138
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b027d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity;->a:Lcom/samsung/android/app/music/milk/store/widget/BaseViewPager;

    .line 139
    invoke-virtual {v6}, Lcom/samsung/android/app/music/milk/store/widget/BaseViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    .line 138
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 137
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 141
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity;->c:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_2
    const/4 v0, 0x0

    if-nez p1, :cond_3

    .line 146
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity;->d:Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity$ImageViewerAdapter;

    invoke-virtual {p1, v1}, Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity$ImageViewerAdapter;->b(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;

    goto :goto_1

    .line 147
    :cond_3
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity;->d:Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity$ImageViewerAdapter;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity$ImageViewerAdapter;->getCount()I

    move-result v3

    sub-int/2addr v3, v2

    if-ne p1, v3, :cond_4

    .line 148
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity;->d:Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity$ImageViewerAdapter;

    sub-int/2addr p1, v2

    invoke-virtual {v1, p1}, Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity$ImageViewerAdapter;->b(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;

    move-object v7, v0

    move-object v0, p1

    move-object p1, v7

    goto :goto_1

    .line 150
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity;->d:Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity$ImageViewerAdapter;

    sub-int/2addr p1, v2

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity$ImageViewerAdapter;->b(I)Landroid/view/View;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;

    .line 151
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity;->d:Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity$ImageViewerAdapter;

    invoke-virtual {p1, v1}, Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity$ImageViewerAdapter;->b(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;

    :goto_1
    if-eqz p1, :cond_5

    const-string v1, "MultipleImageViewerActivity"

    const-string v2, "[onPageSelected] nextView onDefaultScale"

    .line 155
    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->c()V

    :cond_5
    if-eqz v0, :cond_6

    const-string p1, "MultipleImageViewerActivity"

    const-string v1, "[onPageSelected] preView onDefaultScale"

    .line 160
    invoke-static {p1, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->c()V

    :cond_6
    return-void
.end method
