.class abstract Lcom/samsung/android/app/music/settings/SettingsListActivity$SettingItems;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/settings/SettingsListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "SettingItems"
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 329
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 331
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/settings/SettingsListActivity$SettingItems;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method a()I
    .locals 1

    .line 334
    iget-object v0, p0, Lcom/samsung/android/app/music/settings/SettingsListActivity$SettingItems;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method a(I)I
    .locals 4

    .line 350
    iget-object v0, p0, Lcom/samsung/android/app/music/settings/SettingsListActivity$SettingItems;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 353
    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/settings/SettingsListActivity$SettingItems;->b(I)I

    move-result v3

    if-ne p1, v3, :cond_0

    move v1, v2

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v1
.end method

.method a(II)V
    .locals 1
    .param p2    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .line 346
    iget-object v0, p0, Lcom/samsung/android/app/music/settings/SettingsListActivity$SettingItems;->a:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method b(I)I
    .locals 1

    .line 338
    iget-object v0, p0, Lcom/samsung/android/app/music/settings/SettingsListActivity$SettingItems;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/Pair;

    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method c(I)I
    .locals 1

    .line 342
    iget-object v0, p0, Lcom/samsung/android/app/music/settings/SettingsListActivity$SettingItems;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/Pair;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method
