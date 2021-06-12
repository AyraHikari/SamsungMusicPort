.class final Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$isAdapterInitialized$1;
.super Lkotlin/jvm/internal/MutablePropertyReference0;
.source "SourceFile"


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)V
    .locals 0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/MutablePropertyReference0;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$isAdapterInitialized$1;->receiver:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    .line 1483
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "adapter"

    return-object v0
.end method

.method public getOwner()Lkotlin/reflect/KDeclarationContainer;
    .locals 1

    const-class v0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    return-object v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 1

    const-string v0, "getAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;"

    return-object v0
.end method

.method public set(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$isAdapterInitialized$1;->receiver:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    .line 1483
    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;)V

    return-void
.end method
