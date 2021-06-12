.class public Lcom/samsung/android/app/music/privatemode/dialog/PrivateFolderFragment$PrivateFolderAdapter$Builder;
.super Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/privatemode/dialog/PrivateFolderFragment$PrivateFolderAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder<",
        "Lcom/samsung/android/app/music/privatemode/dialog/PrivateFolderFragment$PrivateFolderAdapter$Builder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)V
    .locals 0

    .line 149
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;-><init>(Landroid/support/v4/app/Fragment;)V

    return-void
.end method


# virtual methods
.method protected a()Lcom/samsung/android/app/music/privatemode/dialog/PrivateFolderFragment$PrivateFolderAdapter$Builder;
    .locals 0

    return-object p0
.end method

.method public b()Lcom/samsung/android/app/music/privatemode/dialog/PrivateFolderFragment$PrivateFolderAdapter;
    .locals 1

    .line 159
    new-instance v0, Lcom/samsung/android/app/music/privatemode/dialog/PrivateFolderFragment$PrivateFolderAdapter;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/privatemode/dialog/PrivateFolderFragment$PrivateFolderAdapter;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;)V

    return-object v0
.end method

.method public synthetic build()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
    .locals 1

    .line 146
    invoke-virtual {p0}, Lcom/samsung/android/app/music/privatemode/dialog/PrivateFolderFragment$PrivateFolderAdapter$Builder;->b()Lcom/samsung/android/app/music/privatemode/dialog/PrivateFolderFragment$PrivateFolderAdapter;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic self()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;
    .locals 1

    .line 146
    invoke-virtual {p0}, Lcom/samsung/android/app/music/privatemode/dialog/PrivateFolderFragment$PrivateFolderAdapter$Builder;->a()Lcom/samsung/android/app/music/privatemode/dialog/PrivateFolderFragment$PrivateFolderAdapter$Builder;

    move-result-object v0

    return-object v0
.end method
