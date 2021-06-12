.class public Lcom/samsung/android/app/music/navigate/NavigableBrowseImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/navigate/Navigable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)Ljava/lang/Integer;
    .locals 1

    .line 80
    invoke-static {p1}, Lcom/samsung/android/app/music/browse/BrowseUiType$ListTypeConverter;->a(I)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x2

    .line 81
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Landroid/support/v4/app/Fragment;ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Z)Z
    .locals 4

    const/4 p6, 0x0

    if-nez p1, :cond_0

    const-string p1, "NavigableBrowseImpl"

    const-string p2, "navigateInternal. container fragment is null"

    .line 29
    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return p6

    .line 33
    :cond_0
    invoke-static {p2}, Lcom/samsung/android/app/music/browse/BrowseUiType$ListTypeConverter;->a(I)I

    move-result v0

    const-string v1, "NavigableBrowseImpl"

    .line 34
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "navigateInternal() listType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", keyword="

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", title="

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", uiType="

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", containerFragment="

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, -0x1

    if-ne v0, p2, :cond_1

    const-string p1, "NavigableBrowseImpl"

    const-string p2, "navigateInternal. uiType. unknown"

    .line 39
    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return p6

    .line 43
    :cond_1
    invoke-static {}, Lcom/samsung/android/app/music/settings/MilkSettings;->e()Z

    move-result p2

    const/4 v1, 0x1

    if-eqz p2, :cond_2

    .line 44
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    const p3, 0x7f0b03ba

    invoke-static {p2, p3, p6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p2

    .line 45
    invoke-virtual {p2}, Landroid/widget/Toast;->show()V

    .line 46
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->finish()V

    return v1

    :cond_2
    const/16 p2, 0x5a

    if-ne v0, p2, :cond_5

    .line 51
    invoke-static {p3}, Lcom/samsung/android/app/music/browse/util/PlaylistIdParser;->a(Ljava/lang/String;)Lcom/samsung/android/app/music/browse/util/PlaylistIdParser$PlaylistIdInfo;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 53
    invoke-virtual {p2}, Lcom/samsung/android/app/music/browse/util/PlaylistIdParser$PlaylistIdInfo;->b()Z

    move-result p6

    if-eqz p6, :cond_3

    .line 54
    invoke-virtual {p2}, Lcom/samsung/android/app/music/browse/util/PlaylistIdParser$PlaylistIdInfo;->i()Ljava/lang/String;

    move-result-object p3

    const/16 v0, 0x64

    goto :goto_0

    .line 56
    :cond_3
    invoke-virtual {p2}, Lcom/samsung/android/app/music/browse/util/PlaylistIdParser$PlaylistIdInfo;->c()Z

    move-result p6

    if-eqz p6, :cond_5

    .line 57
    invoke-virtual {p2}, Lcom/samsung/android/app/music/browse/util/PlaylistIdParser$PlaylistIdInfo;->i()Ljava/lang/String;

    move-result-object p3

    const/16 v0, 0x6e

    goto :goto_0

    :cond_4
    const-string p2, "NavigableBrowseImpl"

    .line 61
    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "navigateInternal. info is null. id - "

    invoke-virtual {p6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    invoke-static {p2, p6}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_0
    if-nez p5, :cond_6

    .line 65
    new-instance p5, Landroid/os/Bundle;

    invoke-direct {p5}, Landroid/os/Bundle;-><init>()V

    .line 68
    :cond_6
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    const p2, 0x7f130011

    .line 69
    invoke-virtual {p1, p2}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object p2

    const-string p6, "NavigableBrowseImpl"

    .line 70
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "navigateInternal. new uiType - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", current fragment - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p6, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    invoke-static {v0}, Lcom/samsung/android/app/music/browse/BrowseLauncher;->a(I)Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;

    move-result-object p6

    invoke-virtual {p6, p3}, Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;

    invoke-virtual {p3, p4}, Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;

    invoke-virtual {p3, p5}, Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;->a(Landroid/os/Bundle;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;

    .line 73
    invoke-virtual {p3, p2}, Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;->a(Landroid/support/v4/app/Fragment;)Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;->a(Landroid/support/v4/app/FragmentManager;)V

    return v1
.end method
