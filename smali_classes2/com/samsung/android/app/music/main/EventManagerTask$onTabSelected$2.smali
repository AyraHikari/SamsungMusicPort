.class final Lcom/samsung/android/app/music/main/EventManagerTask$onTabSelected$2;
.super Lkotlin/jvm/internal/MutablePropertyReference0;
.source "SourceFile"


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/main/EventManagerTask;)V
    .locals 0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/MutablePropertyReference0;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/music/main/EventManagerTask$onTabSelected$2;->receiver:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/app/music/main/EventManagerTask;

    .line 278
    invoke-static {v0}, Lcom/samsung/android/app/music/main/EventManagerTask;->c(Lcom/samsung/android/app/music/main/EventManagerTask;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "eventPopupList"

    return-object v0
.end method

.method public getOwner()Lkotlin/reflect/KDeclarationContainer;
    .locals 1

    const-class v0, Lcom/samsung/android/app/music/main/EventManagerTask;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    return-object v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 1

    const-string v0, "getEventPopupList()Ljava/util/ArrayList;"

    return-object v0
.end method

.method public set(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/music/main/EventManagerTask$onTabSelected$2;->receiver:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/app/music/main/EventManagerTask;

    .line 278
    check-cast p1, Ljava/util/ArrayList;

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/main/EventManagerTask;->a(Lcom/samsung/android/app/music/main/EventManagerTask;Ljava/util/ArrayList;)V

    return-void
.end method
