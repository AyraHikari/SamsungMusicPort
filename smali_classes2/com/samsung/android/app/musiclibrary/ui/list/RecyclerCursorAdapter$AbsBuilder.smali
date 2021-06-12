.class public abstract Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AbsBuilder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder<",
        "TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder$Companion;

.field protected static final DEBUG_BUILDER:Z


# instance fields
.field private final context:Landroid/content/Context;

.field private cpAttrsCol:Ljava/lang/String;

.field public final fragment:Landroid/support/v4/app/Fragment;

.field private isRemoteTrack:Z

.field private keywordCol:Ljava/lang/String;

.field private listItemMenuable:Lcom/samsung/android/app/musiclibrary/ui/list/ListItemMoreMenuable;

.field private privateIconEnabled:Z

.field private rippleResId:I

.field private text1Col:Ljava/lang/String;

.field private text1ColorResId:I
    .annotation build Landroid/support/annotation/ColorRes;
    .end annotation
.end field

.field private text2Col:Ljava/lang/String;

.field private text2ColorResId:I
    .annotation build Landroid/support/annotation/ColorRes;
    .end annotation
.end field

.field private text3Col:Ljava/lang/String;

.field private text3ColorResId:I
    .annotation build Landroid/support/annotation/ColorRes;
    .end annotation
.end field

.field private thumbnailFullUriCol:Ljava/lang/String;

.field private thumbnailId:Ljava/lang/String;

.field private thumbnailSizeResId:I
    .annotation build Landroid/support/annotation/DimenRes;
    .end annotation
.end field

.field private thumbnailUri:Landroid/net/Uri;

.field private final thumbnailUriSet:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private winsetUiEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;->Companion:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/Fragment;)V
    .locals 1

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;->fragment:Landroid/support/v4/app/Fragment;

    .line 1137
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;->fragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    const-string v0, "fragment.activity!!"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "fragment.activity!!.applicationContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;->context:Landroid/content/Context;

    .line 1144
    sget p1, Lcom/samsung/android/app/musiclibrary/R$drawable;->mu_ripple_list:I

    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;->rippleResId:I

    .line 1148
    sget-object p1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MDefaultArtworkUtils;->b:Landroid/net/Uri;

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;->thumbnailUri:Landroid/net/Uri;

    .line 1149
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;->thumbnailUriSet:Landroid/util/SparseArray;

    const/4 p1, -0x1

    .line 1158
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;->text1ColorResId:I

    .line 1161
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;->text2ColorResId:I

    .line 1164
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;->text3ColorResId:I

    .line 1167
    sget p1, Lcom/samsung/android/app/musiclibrary/R$dimen;->bitmap_size_middle:I

    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;->thumbnailSizeResId:I

    return-void
.end method


# virtual methods
.method public final addThumbnailUri(ILandroid/net/Uri;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/net/Uri;",
            ")TT;"
        }
    .end annotation

    const-string v0, "uri"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1251
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;->thumbnailUriSet:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1252
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;->self()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object p1

    return-object p1
.end method

.method public abstract build()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter<",
            "*>;"
        }
    .end annotation
.end method

.method public final getContext$musicLibrary_release()Landroid/content/Context;
    .locals 1

    .line 1137
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;->context:Landroid/content/Context;

    return-object v0
.end method

.method public final getCpAttrsCol$musicLibrary_release()Ljava/lang/String;
    .locals 1

    .line 1146
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;->cpAttrsCol:Ljava/lang/String;

    return-object v0
.end method

.method public final getKeywordCol$musicLibrary_release()Ljava/lang/String;
    .locals 1

    .line 1145
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;->keywordCol:Ljava/lang/String;

    return-object v0
.end method

.method public final getListItemMenuable$musicLibrary_release()Lcom/samsung/android/app/musiclibrary/ui/list/ListItemMoreMenuable;
    .locals 1

    .line 1155
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;->listItemMenuable:Lcom/samsung/android/app/musiclibrary/ui/list/ListItemMoreMenuable;

    return-object v0
.end method

.method public final getPrivateIconEnabled$musicLibrary_release()Z
    .locals 1

    .line 1152
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;->privateIconEnabled:Z

    return v0
.end method

.method public final getRippleResId$musicLibrary_release()I
    .locals 1

    .line 1144
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;->rippleResId:I

    return v0
.end method

.method public final getText1Col$musicLibrary_release()Ljava/lang/String;
    .locals 1

    .line 1139
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;->text1Col:Ljava/lang/String;

    return-object v0
.end method

.method public final getText1ColorResId$musicLibrary_release()I
    .locals 1

    .line 1158
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;->text1ColorResId:I

    return v0
.end method

.method public final getText2Col$musicLibrary_release()Ljava/lang/String;
    .locals 1

    .line 1140
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;->text2Col:Ljava/lang/String;

    return-object v0
.end method

.method public final getText2ColorResId$musicLibrary_release()I
    .locals 1

    .line 1161
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;->text2ColorResId:I

    return v0
.end method

.method public final getText3Col$musicLibrary_release()Ljava/lang/String;
    .locals 1

    .line 1141
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;->text3Col:Ljava/lang/String;

    return-object v0
.end method

.method public final getText3ColorResId$musicLibrary_release()I
    .locals 1

    .line 1164
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;->text3ColorResId:I

    return v0
.end method

.method public final getThumbnailFullUriCol$musicLibrary_release()Ljava/lang/String;
    .locals 1

    .line 1143
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;->thumbnailFullUriCol:Ljava/lang/String;

    return-object v0
.end method

.method public final getThumbnailId$musicLibrary_release()Ljava/lang/String;
    .locals 1

    .line 1142
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;->thumbnailId:Ljava/lang/String;

    return-object v0
.end method

.method public final getThumbnailSizeResId$musicLibrary_release()I
    .locals 1

    .line 1167
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;->thumbnailSizeResId:I

    return v0
.end method

.method public final getThumbnailUri$musicLibrary_release()Landroid/net/Uri;
    .locals 1

    .line 1148
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;->thumbnailUri:Landroid/net/Uri;

    return-object v0
.end method

.method public final getThumbnailUriSet$musicLibrary_release()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .line 1149
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;->thumbnailUriSet:Landroid/util/SparseArray;

    return-object v0
.end method

.method public final getWinsetUiEnabled$musicLibrary_release()Z
    .locals 1

    .line 1151
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;->winsetUiEnabled:Z

    return v0
.end method

.method public final isRemoteTrack$musicLibrary_release()Z
    .locals 1

    .line 1154
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;->isRemoteTrack:Z

    return v0
.end method

.method protected abstract self()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public final setCpAttrsCol(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    const-string v0, "column"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1213
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;->cpAttrsCol:Ljava/lang/String;

    .line 1214
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;->self()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object p1

    return-object p1
.end method

.method public final setCpAttrsCol$musicLibrary_release(Ljava/lang/String;)V
    .locals 0

    .line 1146
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;->cpAttrsCol:Ljava/lang/String;

    return-void
.end method

.method public final setKeywordCol(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    const-string v0, "column"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1187
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;->keywordCol:Ljava/lang/String;

    .line 1188
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;->self()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object p1

    return-object p1
.end method

.method public final setKeywordCol$musicLibrary_release(Ljava/lang/String;)V
    .locals 0

    .line 1145
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;->keywordCol:Ljava/lang/String;

    return-void
.end method

.method public final setListItemMenuable(Lcom/samsung/android/app/musiclibrary/ui/list/ListItemMoreMenuable;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/musiclibrary/ui/list/ListItemMoreMenuable;",
            ")TT;"
        }
    .end annotation

    const-string v0, "listItemMenuable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1261
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;->listItemMenuable:Lcom/samsung/android/app/musiclibrary/ui/list/ListItemMoreMenuable;

    .line 1262
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;->self()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object p1

    return-object p1
.end method

.method public final setListItemMenuable$musicLibrary_release(Lcom/samsung/android/app/musiclibrary/ui/list/ListItemMoreMenuable;)V
    .locals 0

    .line 1155
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;->listItemMenuable:Lcom/samsung/android/app/musiclibrary/ui/list/ListItemMoreMenuable;

    return-void
.end method

.method public final setPrivateIconEnabled(Z)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    .line 1241
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;->privateIconEnabled:Z

    .line 1242
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;->self()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object p1

    return-object p1
.end method

.method public final setPrivateIconEnabled$musicLibrary_release(Z)V
    .locals 0

    .line 1152
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;->privateIconEnabled:Z

    return-void
.end method

.method public final setRemoteTrack(Z)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    .line 1246
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;->isRemoteTrack:Z

    .line 1247
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;->self()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object p1

    return-object p1
.end method

.method public final setRemoteTrack$musicLibrary_release(Z)V
    .locals 0

    .line 1154
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;->isRemoteTrack:Z

    return-void
.end method

.method public final setRippleResId(I)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 1208
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;->rippleResId:I

    .line 1209
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;->self()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object p1

    return-object p1
.end method

.method public final setRippleResId$musicLibrary_release(I)V
    .locals 0

    .line 1144
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;->rippleResId:I

    return-void
.end method

.method public final setText1Col(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    const-string v0, "column"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1172
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;->text1Col:Ljava/lang/String;

    .line 1173
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;->self()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object p1

    return-object p1
.end method

.method public final setText1Col$musicLibrary_release(Ljava/lang/String;)V
    .locals 0

    .line 1139
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;->text1Col:Ljava/lang/String;

    return-void
.end method

.method public final setText1Color(I)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 1218
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;->text1ColorResId:I

    .line 1219
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;->self()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object p1

    return-object p1
.end method

.method public final setText1ColorResId$musicLibrary_release(I)V
    .locals 0

    .line 1158
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;->text1ColorResId:I

    return-void
.end method

.method public final setText2Col(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    const-string v0, "column"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1177
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;->text2Col:Ljava/lang/String;

    .line 1178
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;->self()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object p1

    return-object p1
.end method

.method public final setText2Col$musicLibrary_release(Ljava/lang/String;)V
    .locals 0

    .line 1140
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;->text2Col:Ljava/lang/String;

    return-void
.end method

.method public final setText2Color(I)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 1223
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;->text2ColorResId:I

    .line 1224
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;->self()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object p1

    return-object p1
.end method

.method public final setText2ColorResId$musicLibrary_release(I)V
    .locals 0

    .line 1161
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;->text2ColorResId:I

    return-void
.end method

.method public final setText3Col(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    const-string v0, "column"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1182
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;->text3Col:Ljava/lang/String;

    .line 1183
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;->self()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object p1

    return-object p1
.end method

.method public final setText3Col$musicLibrary_release(Ljava/lang/String;)V
    .locals 0

    .line 1141
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;->text3Col:Ljava/lang/String;

    return-void
.end method

.method public final setText3Color(I)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 1228
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;->text3ColorResId:I

    .line 1229
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;->self()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object p1

    return-object p1
.end method

.method public final setText3ColorResId$musicLibrary_release(I)V
    .locals 0

    .line 1164
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;->text3ColorResId:I

    return-void
.end method

.method public final setThumbnailFullUriCol(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    const-string v0, "column"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1203
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;->thumbnailFullUriCol:Ljava/lang/String;

    .line 1204
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;->self()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object p1

    return-object p1
.end method

.method public final setThumbnailFullUriCol$musicLibrary_release(Ljava/lang/String;)V
    .locals 0

    .line 1143
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;->thumbnailFullUriCol:Ljava/lang/String;

    return-void
.end method

.method public final setThumbnailId$musicLibrary_release(Ljava/lang/String;)V
    .locals 0

    .line 1142
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;->thumbnailId:Ljava/lang/String;

    return-void
.end method

.method public final setThumbnailKey(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    const-string v0, "column"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1192
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;->thumbnailId:Ljava/lang/String;

    .line 1193
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;->self()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object p1

    return-object p1
.end method

.method public final setThumbnailKey(Ljava/lang/String;Landroid/net/Uri;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            ")TT;"
        }
    .end annotation

    const-string v0, "column"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "thumbnailUri"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1197
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;->thumbnailId:Ljava/lang/String;

    .line 1198
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;->thumbnailUri:Landroid/net/Uri;

    .line 1199
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;->self()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object p1

    return-object p1
.end method

.method public final setThumbnailSize(I)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 1256
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;->thumbnailSizeResId:I

    .line 1257
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;->self()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object p1

    return-object p1
.end method

.method public final setThumbnailSizeResId$musicLibrary_release(I)V
    .locals 0

    .line 1167
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;->thumbnailSizeResId:I

    return-void
.end method

.method public final setThumbnailUri$musicLibrary_release(Landroid/net/Uri;)V
    .locals 0

    .line 1148
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;->thumbnailUri:Landroid/net/Uri;

    return-void
.end method

.method public setWinsetUiEnabled(Z)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    .line 1233
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;->winsetUiEnabled:Z

    .line 1234
    iget-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;->winsetUiEnabled:Z

    if-eqz p1, :cond_0

    sget p1, Lcom/samsung/android/app/musiclibrary/R$color;->mu_main_text_winset:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;->setText1Color(I)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object p1

    .line 1235
    sget v0, Lcom/samsung/android/app/musiclibrary/R$color;->mu_sub_text_winset:I

    .line 1234
    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;->setText2Color(I)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object p1

    .line 1236
    sget v0, Lcom/samsung/android/app/musiclibrary/R$color;->mu_sub_text_winset:I

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;->setText3Color(I)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object p1

    goto :goto_0

    .line 1237
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;->self()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public final setWinsetUiEnabled$musicLibrary_release(Z)V
    .locals 0

    .line 1151
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;->winsetUiEnabled:Z

    return-void
.end method
