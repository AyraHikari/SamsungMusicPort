.class final Lcom/samsung/android/app/music/list/local/folder/FolderDetailFragment$FolderDetailFilterableImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/list/common/FilterOptionManager$Filterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/folder/FolderDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FolderDetailFilterableImpl"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/SharedPreferences;)I
    .locals 2

    const-string v0, "uiPreferences"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 196
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/folder/FolderDetailFragment$FolderDetailFilterableImpl;->a()[I

    move-result-object v0

    const/4 v1, 0x0

    aget v0, v0, v1

    const-string v1, "filter_option_folder_track"

    .line 197
    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public a(Landroid/content/SharedPreferences;I)V
    .locals 1

    const-string v0, "uiPreferences"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 220
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "editor"

    .line 221
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "filter_option_folder_track"

    .line 201
    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 222
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public a()[I
    .locals 1

    const/4 v0, 0x2

    .line 192
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 4
        0x2
        0x0
    .end array-data
.end method
