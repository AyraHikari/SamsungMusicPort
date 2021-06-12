.class interface abstract Lcom/samsung/android/app/music/service/radioqueue/RadioRoom$PlayListDao;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/service/radioqueue/RadioRoom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "PlayListDao"
.end annotation


# virtual methods
.method public varargs abstract a([Lcom/samsung/android/app/music/service/radioqueue/RadioRoom$PlayList;)I
.end method

.method public abstract a()Landroid/database/Cursor;
.end method

.method public abstract a(Landroid/arch/persistence/db/SupportSQLiteQuery;)Landroid/database/Cursor;
.end method

.method public abstract a(Ljava/lang/String;)Landroid/database/Cursor;
.end method

.method public abstract a(Lcom/samsung/android/app/music/service/radioqueue/RadioRoom$PlayList;)V
.end method

.method public abstract b(Lcom/samsung/android/app/music/service/radioqueue/RadioRoom$PlayList;)I
.end method

.method public abstract b(Ljava/lang/String;)Lcom/samsung/android/app/music/service/radioqueue/RadioRoom$PlayList;
.end method

.method public abstract b()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/service/radioqueue/RadioRoom$PlayList;",
            ">;"
        }
    .end annotation
.end method

.method public varargs abstract b([Lcom/samsung/android/app/music/service/radioqueue/RadioRoom$PlayList;)V
.end method

.method public abstract b(Landroid/arch/persistence/db/SupportSQLiteQuery;)[Lcom/samsung/android/app/music/service/radioqueue/RadioRoom$PlayList;
.end method

.method public abstract c()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/service/radioqueue/RadioRoom$PlayList;",
            ">;"
        }
    .end annotation
.end method

.method public abstract d()I
.end method
