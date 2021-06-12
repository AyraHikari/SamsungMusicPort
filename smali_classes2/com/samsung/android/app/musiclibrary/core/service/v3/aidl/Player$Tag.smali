.class public interface abstract annotation Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player$Tag;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "Tag"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player$Tag$Companion;
    }
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final Companion:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player$Tag$Companion;

.field public static final EMPTY:Ljava/lang/String; = "empty"

.field public static final MUSIC:Ljava/lang/String; = "music"

.field public static final RADIO:Ljava/lang/String; = "radio"

.field public static final SPOTIFY:Ljava/lang/String; = "spotify"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player$Tag$Companion;->$$INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player$Tag$Companion;

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player$Tag;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player$Tag$Companion;

    return-void
.end method
