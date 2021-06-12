.class public final Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Companion;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "Empty"

    const-string v4, "getEmpty()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Companion;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 224
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getEmpty()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;
    .locals 3

    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->access$getEmpty$cp()Lkotlin/Lazy;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Companion;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Companion;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    return-object v0
.end method
