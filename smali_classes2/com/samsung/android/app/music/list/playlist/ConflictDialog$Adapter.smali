.class public final Lcom/samsung/android/app/music/list/playlist/ConflictDialog$Adapter;
.super Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/playlist/ConflictDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Adapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/list/playlist/ConflictDialog$Adapter$Builder;,
        Lcom/samsung/android/app/music/list/playlist/ConflictDialog$Adapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter<",
        "Lcom/samsung/android/app/music/list/playlist/ConflictDialog$Adapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final checkedStates:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Lcom/samsung/android/app/music/list/playlist/ConflictDialog$SyncItem;",
            ">;"
        }
    .end annotation
.end field

.field private final deleteThisStr:Ljava/lang/String;

.field private final unknownString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/list/playlist/ConflictDialog$Adapter$Builder;)V
    .locals 1

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 192
    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;)V

    .line 194
    iget-object p1, p0, Lcom/samsung/android/app/music/list/playlist/ConflictDialog$Adapter;->context:Landroid/content/Context;

    const v0, 0x7f0b0429

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/list/playlist/ConflictDialog$Adapter;->unknownString:Ljava/lang/String;

    .line 195
    iget-object p1, p0, Lcom/samsung/android/app/music/list/playlist/ConflictDialog$Adapter;->context:Landroid/content/Context;

    const v0, 0x7f0b00f9

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/list/playlist/ConflictDialog$Adapter;->deleteThisStr:Ljava/lang/String;

    .line 197
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/list/playlist/ConflictDialog$Adapter;->checkedStates:Ljava/util/HashMap;

    return-void
.end method

.method public static final synthetic access$getContext$p(Lcom/samsung/android/app/music/list/playlist/ConflictDialog$Adapter;)Landroid/content/Context;
    .locals 0

    .line 192
    iget-object p0, p0, Lcom/samsung/android/app/music/list/playlist/ConflictDialog$Adapter;->context:Landroid/content/Context;

    return-object p0
.end method

.method private final convertToStringId(Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 2

    if-nez p1, :cond_0

    goto :goto_0

    .line 388
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const p1, 0x7f0b00fb

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_2

    :cond_1
    :goto_0
    const/4 v0, 0x1

    if-nez p1, :cond_2

    goto :goto_1

    .line 389
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v0, :cond_3

    const p1, 0x7f0b0268

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_2

    :cond_3
    :goto_1
    const/4 p1, 0x0

    :goto_2
    return-object p1
.end method

.method private final localDateModified(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 2

    const-string v0, "local_date_modified"

    .line 824
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_1

    const-string v0, "GMT+09:00"

    .line 352
    invoke-static {p1, v0}, Lcom/samsung/android/app/music/list/playlist/PlaylistKt;->toDate(Ljava/lang/Long;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 355
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/music/list/playlist/ConflictDialog$Adapter;->unknownString:Ljava/lang/String;

    const-string v0, "unknownString"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1
    return-object p1
.end method

.method private final localDeviceName(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1

    const-string v0, "local_device_name"

    .line 822
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "getString(getColumnIndexOrThrow(columnName))"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final localId(Landroid/database/Cursor;)Ljava/lang/Long;
    .locals 2

    const-string v0, "local_playlist_id"

    .line 820
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private final localModifiedState(Landroid/database/Cursor;)I
    .locals 1

    const-string v0, "local_modified_state"

    .line 828
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    return p1
.end method

.method private final localModifiedStateStrId(Landroid/database/Cursor;)Ljava/lang/Integer;
    .locals 2

    const-string v0, "local_modified_state"

    .line 830
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 380
    :goto_0
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/list/playlist/ConflictDialog$Adapter;->convertToStringId(Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method private final localPlaylistName(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 2

    const-string v0, "local_playlist_name"

    .line 826
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_1

    goto :goto_1

    .line 368
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/music/list/playlist/ConflictDialog$Adapter;->unknownString:Ljava/lang/String;

    :goto_1
    return-object p1
.end method

.method private final playlistName(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 3

    const-string v0, "local_playlist_name"

    .line 818
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v0, v2

    goto :goto_0

    :cond_0
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    const-string v0, "server_playlist_name"

    .line 819
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_1
    if-eqz v2, :cond_3

    return-object v2

    .line 339
    :cond_3
    iget-object p1, p0, Lcom/samsung/android/app/music/list/playlist/ConflictDialog$Adapter;->unknownString:Ljava/lang/String;

    const-string v0, "unknownString"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final serverDateModified(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 2

    const-string v0, "server_date_modified"

    .line 825
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_1

    const-string v0, "GMT+09:00"

    .line 361
    invoke-static {p1, v0}, Lcom/samsung/android/app/music/list/playlist/PlaylistKt;->toDate(Ljava/lang/Long;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 364
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/music/list/playlist/ConflictDialog$Adapter;->unknownString:Ljava/lang/String;

    const-string v0, "unknownString"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1
    return-object p1
.end method

.method private final serverDeviceName(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 2

    const-string v0, "server_device_name"

    .line 823
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_1

    goto :goto_1

    .line 347
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/music/list/playlist/ConflictDialog$Adapter;->unknownString:Ljava/lang/String;

    :goto_1
    return-object p1
.end method

.method private final serverId(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 2

    const-string v0, "server_playlist_id"

    .line 821
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private final serverModifiedState(Landroid/database/Cursor;)I
    .locals 1

    const-string v0, "server_modified_state"

    .line 829
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    return p1
.end method

.method private final serverModifiedStateStrId(Landroid/database/Cursor;)Ljava/lang/Integer;
    .locals 2

    const-string v0, "server_modified_state"

    .line 831
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 383
    :goto_0
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/list/playlist/ConflictDialog$Adapter;->convertToStringId(Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method private final serverPlaylistName(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 2

    const-string v0, "server_playlist_name"

    .line 827
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_1

    goto :goto_1

    .line 373
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/music/list/playlist/ConflictDialog$Adapter;->unknownString:Ljava/lang/String;

    :goto_1
    return-object p1
.end method


# virtual methods
.method public final getCheckedStates()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Lcom/samsung/android/app/music/list/playlist/ConflictDialog$SyncItem;",
            ">;"
        }
    .end annotation

    .line 197
    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/ConflictDialog$Adapter;->checkedStates:Ljava/util/HashMap;

    return-object v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 192
    check-cast p1, Lcom/samsung/android/app/music/list/playlist/ConflictDialog$Adapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/list/playlist/ConflictDialog$Adapter;->onBindViewHolder(Lcom/samsung/android/app/music/list/playlist/ConflictDialog$Adapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/samsung/android/app/music/list/playlist/ConflictDialog$Adapter$ViewHolder;I)V
    .locals 7

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 211
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/list/playlist/ConflictDialog$Adapter;->getCursorOrThrow(I)Landroid/database/Cursor;

    move-result-object p2

    .line 213
    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/playlist/ConflictDialog$Adapter$ViewHolder;->getPlaylistName()Landroid/widget/TextView;

    move-result-object v0

    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/list/playlist/ConflictDialog$Adapter;->playlistName(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 215
    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/playlist/ConflictDialog$Adapter$ViewHolder;->getLocalText1()Landroid/widget/TextView;

    move-result-object v0

    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/list/playlist/ConflictDialog$Adapter;->localDeviceName(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/playlist/ConflictDialog$Adapter$ViewHolder;->getLocalText2()Landroid/widget/TextView;

    move-result-object v0

    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/list/playlist/ConflictDialog$Adapter;->localDateModified(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 218
    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/list/playlist/ConflictDialog$Adapter;->localModifiedStateStrId(Landroid/database/Cursor;)Ljava/lang/Integer;

    move-result-object v0

    .line 219
    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/playlist/ConflictDialog$Adapter$ViewHolder;->getLocalText3()Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 220
    iget-object v4, p0, Lcom/samsung/android/app/music/list/playlist/ConflictDialog$Adapter;->context:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    new-array v5, v2, [Ljava/lang/Object;

    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/list/playlist/ConflictDialog$Adapter;->localPlaylistName(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-virtual {v4, v0, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    goto :goto_0

    .line 222
    :cond_0
    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/list/playlist/ConflictDialog$Adapter;->localPlaylistName(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 219
    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 225
    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/list/playlist/ConflictDialog$Adapter;->serverModifiedState(Landroid/database/Cursor;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 226
    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/playlist/ConflictDialog$Adapter$ViewHolder;->getServerText1()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/list/playlist/ConflictDialog$Adapter;->deleteThisStr:Ljava/lang/String;

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 227
    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/playlist/ConflictDialog$Adapter$ViewHolder;->getServerText2()Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 228
    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/playlist/ConflictDialog$Adapter$ViewHolder;->getServerText3()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 230
    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/playlist/ConflictDialog$Adapter$ViewHolder;->getServerText1()Landroid/widget/TextView;

    move-result-object v0

    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/list/playlist/ConflictDialog$Adapter;->serverDeviceName(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 231
    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/playlist/ConflictDialog$Adapter$ViewHolder;->getServerText2()Landroid/widget/TextView;

    move-result-object v0

    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/list/playlist/ConflictDialog$Adapter;->serverDateModified(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 233
    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/list/playlist/ConflictDialog$Adapter;->serverModifiedStateStrId(Landroid/database/Cursor;)Ljava/lang/Integer;

    move-result-object v0

    .line 234
    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/playlist/ConflictDialog$Adapter$ViewHolder;->getServerText3()Landroid/widget/TextView;

    move-result-object v1

    if-eqz v0, :cond_2

    .line 235
    iget-object v4, p0, Lcom/samsung/android/app/music/list/playlist/ConflictDialog$Adapter;->context:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    new-array v5, v2, [Ljava/lang/Object;

    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/list/playlist/ConflictDialog$Adapter;->serverPlaylistName(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-virtual {v4, v0, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    goto :goto_1

    .line 237
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/ConflictDialog$Adapter;->context:Landroid/content/Context;

    const v4, 0x7f0b0268

    new-array v5, v2, [Ljava/lang/Object;

    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/list/playlist/ConflictDialog$Adapter;->serverPlaylistName(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-virtual {v0, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 234
    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 239
    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/playlist/ConflictDialog$Adapter$ViewHolder;->getServerText2()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 240
    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/playlist/ConflictDialog$Adapter$ViewHolder;->getServerText3()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 243
    :goto_2
    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/ConflictDialog$Adapter;->checkedStates:Ljava/util/HashMap;

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 244
    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/ConflictDialog$Adapter;->checkedStates:Ljava/util/HashMap;

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_3
    check-cast p2, Lcom/samsung/android/app/music/list/playlist/ConflictDialog$SyncItem;

    invoke-virtual {p2}, Lcom/samsung/android/app/music/list/playlist/ConflictDialog$SyncItem;->getSyncAction()I

    move-result p2

    packed-switch p2, :pswitch_data_0

    goto :goto_3

    .line 250
    :pswitch_0
    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/playlist/ConflictDialog$Adapter$ViewHolder;->getLocalCheckbox()Landroid/widget/CheckBox;

    move-result-object p2

    invoke-virtual {p2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 251
    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/playlist/ConflictDialog$Adapter$ViewHolder;->getServerCheckbox()Landroid/widget/CheckBox;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_3

    .line 246
    :pswitch_1
    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/playlist/ConflictDialog$Adapter$ViewHolder;->getLocalCheckbox()Landroid/widget/CheckBox;

    move-result-object p2

    invoke-virtual {p2, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 247
    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/playlist/ConflictDialog$Adapter$ViewHolder;->getServerCheckbox()Landroid/widget/CheckBox;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_3

    .line 255
    :cond_4
    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/playlist/ConflictDialog$Adapter$ViewHolder;->getLocalCheckbox()Landroid/widget/CheckBox;

    move-result-object p2

    invoke-virtual {p2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 256
    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/playlist/ConflictDialog$Adapter$ViewHolder;->getServerCheckbox()Landroid/widget/CheckBox;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic onBindViewHolder(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;I)V
    .locals 0

    .line 192
    check-cast p1, Lcom/samsung/android/app/music/list/playlist/ConflictDialog$Adapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/list/playlist/ConflictDialog$Adapter;->onBindViewHolder(Lcom/samsung/android/app/music/list/playlist/ConflictDialog$Adapter$ViewHolder;I)V

    return-void
.end method

.method protected onCreateViewHolder(Landroid/view/ViewGroup;ILandroid/view/View;)Lcom/samsung/android/app/music/list/playlist/ConflictDialog$Adapter$ViewHolder;
    .locals 2

    const-string p3, "parent"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 204
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    const v0, 0x7f04004e

    const/4 v1, 0x0

    invoke-virtual {p3, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 207
    new-instance p3, Lcom/samsung/android/app/music/list/playlist/ConflictDialog$Adapter$ViewHolder;

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p3, p0, p1, p2}, Lcom/samsung/android/app/music/list/playlist/ConflictDialog$Adapter$ViewHolder;-><init>(Lcom/samsung/android/app/music/list/playlist/ConflictDialog$Adapter;Landroid/view/View;I)V

    return-object p3
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;ILandroid/view/View;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;
    .locals 0

    .line 192
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/app/music/list/playlist/ConflictDialog$Adapter;->onCreateViewHolder(Landroid/view/ViewGroup;ILandroid/view/View;)Lcom/samsung/android/app/music/list/playlist/ConflictDialog$Adapter$ViewHolder;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;

    return-object p1
.end method

.method public final onItemClick(IJI)V
    .locals 9

    if-gez p1, :cond_0

    return-void

    .line 262
    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/list/playlist/ConflictDialog$Adapter;->getCursorOrThrow(I)Landroid/database/Cursor;

    move-result-object p1

    .line 263
    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/ConflictDialog$Adapter;->checkedStates:Ljava/util/HashMap;

    check-cast v0, Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    new-instance p3, Lcom/samsung/android/app/music/list/playlist/ConflictDialog$SyncItem;

    .line 264
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/list/playlist/ConflictDialog$Adapter;->localId(Landroid/database/Cursor;)Ljava/lang/Long;

    move-result-object v2

    .line 265
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/list/playlist/ConflictDialog$Adapter;->localPlaylistName(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v3

    .line 266
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/list/playlist/ConflictDialog$Adapter;->localModifiedState(Landroid/database/Cursor;)I

    move-result v4

    .line 267
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/list/playlist/ConflictDialog$Adapter;->serverId(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v5

    .line 268
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/list/playlist/ConflictDialog$Adapter;->serverPlaylistName(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v6

    .line 269
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/list/playlist/ConflictDialog$Adapter;->serverModifiedState(Landroid/database/Cursor;)I

    move-result v7

    move-object v1, p3

    move v8, p4

    .line 263
    invoke-direct/range {v1 .. v8}, Lcom/samsung/android/app/music/list/playlist/ConflictDialog$SyncItem;-><init>(Ljava/lang/Long;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/playlist/ConflictDialog$Adapter;->notifyDataSetChanged()V

    .line 273
    iget-object p1, p0, Lcom/samsung/android/app/music/list/playlist/ConflictDialog$Adapter;->fragment:Landroid/support/v4/app/Fragment;

    if-eqz p1, :cond_1

    check-cast p1, Lcom/samsung/android/app/music/list/playlist/ConflictDialog;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/playlist/ConflictDialog;->updatePositiveButton()V

    return-void

    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type com.samsung.android.app.music.list.playlist.ConflictDialog"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
