.class final Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$setUserVisibleHint$1;
.super Lkotlin/jvm/internal/MutablePropertyReference0;
.source "SourceFile"


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;)V
    .locals 0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/MutablePropertyReference0;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$setUserVisibleHint$1;->receiver:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;

    .line 127
    invoke-static {v0}, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;->b(Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;)Lcom/samsung/android/app/music/list/ListFavoriteableImpl;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "favoriteable"

    return-object v0
.end method

.method public getOwner()Lkotlin/reflect/KDeclarationContainer;
    .locals 1

    const-class v0, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    return-object v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 1

    const-string v0, "getFavoriteable()Lcom/samsung/android/app/music/list/ListFavoriteableImpl;"

    return-object v0
.end method

.method public set(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$setUserVisibleHint$1;->receiver:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;

    .line 127
    check-cast p1, Lcom/samsung/android/app/music/list/ListFavoriteableImpl;

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;->a(Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;Lcom/samsung/android/app/music/list/ListFavoriteableImpl;)V

    return-void
.end method
