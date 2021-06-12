.class public final Lcom/samsung/android/app/music/list/playlist/ConflictDialog$SyncItem;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/playlist/ConflictDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SyncItem"
.end annotation


# instance fields
.field private final localModifiedState:I

.field private final localPlaylistId:Ljava/lang/Long;

.field private final localPlaylistName:Ljava/lang/String;

.field private final serverModifiedState:I

.field private final serverPlaylistId:Ljava/lang/String;

.field private final serverPlaylistName:Ljava/lang/String;

.field private final syncAction:I


# direct methods
.method public constructor <init>(Ljava/lang/Long;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V
    .locals 0

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/list/playlist/ConflictDialog$SyncItem;->localPlaylistId:Ljava/lang/Long;

    iput-object p2, p0, Lcom/samsung/android/app/music/list/playlist/ConflictDialog$SyncItem;->localPlaylistName:Ljava/lang/String;

    iput p3, p0, Lcom/samsung/android/app/music/list/playlist/ConflictDialog$SyncItem;->localModifiedState:I

    iput-object p4, p0, Lcom/samsung/android/app/music/list/playlist/ConflictDialog$SyncItem;->serverPlaylistId:Ljava/lang/String;

    iput-object p5, p0, Lcom/samsung/android/app/music/list/playlist/ConflictDialog$SyncItem;->serverPlaylistName:Ljava/lang/String;

    iput p6, p0, Lcom/samsung/android/app/music/list/playlist/ConflictDialog$SyncItem;->serverModifiedState:I

    iput p7, p0, Lcom/samsung/android/app/music/list/playlist/ConflictDialog$SyncItem;->syncAction:I

    return-void
.end method


# virtual methods
.method public final getLocalModifiedState()I
    .locals 1

    .line 185
    iget v0, p0, Lcom/samsung/android/app/music/list/playlist/ConflictDialog$SyncItem;->localModifiedState:I

    return v0
.end method

.method public final getLocalPlaylistId()Ljava/lang/Long;
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/ConflictDialog$SyncItem;->localPlaylistId:Ljava/lang/Long;

    return-object v0
.end method

.method public final getLocalPlaylistName()Ljava/lang/String;
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/ConflictDialog$SyncItem;->localPlaylistName:Ljava/lang/String;

    return-object v0
.end method

.method public final getServerModifiedState()I
    .locals 1

    .line 188
    iget v0, p0, Lcom/samsung/android/app/music/list/playlist/ConflictDialog$SyncItem;->serverModifiedState:I

    return v0
.end method

.method public final getServerPlaylistId()Ljava/lang/String;
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/ConflictDialog$SyncItem;->serverPlaylistId:Ljava/lang/String;

    return-object v0
.end method

.method public final getServerPlaylistName()Ljava/lang/String;
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/ConflictDialog$SyncItem;->serverPlaylistName:Ljava/lang/String;

    return-object v0
.end method

.method public final getSyncAction()I
    .locals 1

    .line 189
    iget v0, p0, Lcom/samsung/android/app/music/list/playlist/ConflictDialog$SyncItem;->syncAction:I

    return v0
.end method
