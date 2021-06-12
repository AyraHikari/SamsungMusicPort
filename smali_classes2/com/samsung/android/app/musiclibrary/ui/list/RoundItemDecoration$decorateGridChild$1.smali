.class final Lcom/samsung/android/app/musiclibrary/ui/list/RoundItemDecoration$decorateGridChild$1;
.super Lkotlin/jvm/internal/MutablePropertyReference0;
.source "SourceFile"


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/RoundItemDecoration;)V
    .locals 0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/MutablePropertyReference0;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RoundItemDecoration$decorateGridChild$1;->receiver:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/RoundItemDecoration;

    .line 140
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RoundItemDecoration;->c(Lcom/samsung/android/app/musiclibrary/ui/list/RoundItemDecoration;)Lcom/samsung/android/app/musiclibrary/kotlin/extension/sesl/SubHeaderRoundHelper;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "gridItemSubHeaderRoundHelper"

    return-object v0
.end method

.method public getOwner()Lkotlin/reflect/KDeclarationContainer;
    .locals 1

    const-class v0, Lcom/samsung/android/app/musiclibrary/ui/list/RoundItemDecoration;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    return-object v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 1

    const-string v0, "getGridItemSubHeaderRoundHelper()Lcom/samsung/android/app/musiclibrary/kotlin/extension/sesl/SubHeaderRoundHelper;"

    return-object v0
.end method

.method public set(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RoundItemDecoration$decorateGridChild$1;->receiver:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/RoundItemDecoration;

    .line 140
    check-cast p1, Lcom/samsung/android/app/musiclibrary/kotlin/extension/sesl/SubHeaderRoundHelper;

    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RoundItemDecoration;->a(Lcom/samsung/android/app/musiclibrary/ui/list/RoundItemDecoration;Lcom/samsung/android/app/musiclibrary/kotlin/extension/sesl/SubHeaderRoundHelper;)V

    return-void
.end method
